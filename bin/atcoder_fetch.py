import urllib.request
from html.parser import HTMLParser
from html.entities import name2codepoint
from pathlib import Path

# Fetch sample files from Atcoder website
# Assume that the current directory is something like '{contest}/{problem}' such as 'abc150/e'.

class AtCoderHTMLParser(HTMLParser):
    def __init__(self):
        super().__init__()
        self.prev_tag = ''
        self.found_h3 = False
        self.found_pre = False
        self.is_input = False
        self.cnt = 1

    def handle_starttag(self, tag, attrs):
        self.prev_tag = tag

    def handle_data(self, data):
        if self.prev_tag == 'h3':
            if data.startswith('入力例'):
                self.is_input = True
                self.found_h3 = True
            elif data.startswith('出力例'):
                self.is_input = False
                self.found_h3 = True
        elif self.found_h3 and self.prev_tag == 'pre':
            content = data.replace('\r\n', '\n')
            self.output(content)
            if not self.is_input:
                self.cnt += 1
            self.found_h3 = False
            self.found_pre = False

    def output(self, data):
        if self.is_input:
            file_name = 'input{}.txt'.format(str(self.cnt))
        else:
            file_name = 'output{}.txt'.format(str(self.cnt))
        with open(file_name, 'w') as f:
            f.write(data)

if __name__ == '__main__':
    p = Path('.').resolve()
    problem = p.name
    contest = p.parent.name
    # print(contest, problem)
    url = 'https://atcoder.jp/contests/{}/tasks/{}_{}'.format(contest, contest, problem)

    fp = urllib.request.urlopen(url)
    html_bs = fp.read()
    fp.close()
    html_str = html_bs.decode('utf8')
    # print(html_str)

    parser = AtCoderHTMLParser()
    parser.feed(html_str)
