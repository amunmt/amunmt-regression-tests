#!/bin/bash -ex

if [ $# -eq 0 ]; then
    TESTS='tests/*'
else
    TESTS=$@
fi

if [ ! -s ../amun/build/amun ]; then
    echo "Could not find amun executable: ../amun/build/amun"
    exit 1
fi

EXITCODE=0

for test in `ls -d $TESTS`; do
    cd $test
    time -p make -i 2> err
    if grep -qi "make:.* error" err; then
        EXITCODE=1
    fi
    cd -
done

exit $EXITCODE
