#!/bin/bash

set -eu

# Test main.cpp with samples
# Assume that the source file name is 'main.cpp' and sample files are prepared by atcoder.py

readonly CFLAGS="-g"
readonly COMPILE_CMD="cpo"
readonly SRC_NAME="main.cpp"
readonly BIN_NAME="./main"
readonly TMP_FILE="/tmp/atcoder_output"

bash --login -c "CFLAGS=$CFLAGS $COMPILE_CMD $SRC_NAME"

for in_f in $(ls input*.txt); do
    out_f=$(echo $in_f | sed -e 's/input/output/')
    bash -c "$BIN_NAME < $in_f > $TMP_FILE"
    cat $TMP_FILE
    echo -n "${in_f}: "

    set +e
    diff $TMP_FILE $out_f > /dev/null; result=$?
    if [ $result -eq 0 ]; then
        echo "success"
    else
        echo "fail"
    fi
    set -e
done
