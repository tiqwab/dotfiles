import urllib.request
import http.cookiejar
import requests
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

    # See https://github.com/kyuridenamida/atcoder-tools/blob/stable/atcodertools/client/models/problem_content.py
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

    # Prepared by atcoder-tools
    session_path = Path('~/.local/share/atcoder-tools/cookie.txt').expanduser().resolve()
    session = requests.Session()
    session.cookies = http.cookiejar.LWPCookieJar(session_path)
    session.cookies.load()
    # FIXME: use a new url
    # TODO: check actual url in the problem list during contest
    # url = 'https://{}.contest.atcoder.jp/tasks/{}_{}'.format(contest, contest, problem)
    url = 'https://atcoder.jp/contests/{}/tasks/{}_{}'.format(contest, contest, problem)
    response = session.get(url)
    html_str = response.text
    # print(html_str)

    # url = 'https://atcoder.jp/contests/{}/tasks/{}_{}'.format(contest, contest, problem)
    # fp = urllib.request.urlopen(url)
    # html_bs = fp.read()
    # fp.close()
    # html_str = html_bs.decode('utf8')
    # print(html_str)

    parser = AtCoderHTMLParser()
    parser.feed(html_str)
