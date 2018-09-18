#!/bin/bash -ex

if [ $# -eq 0 ]; then
    TESTS='tests/*'
else
    TESTS=$@
fi

AMUN_DEFAULT=../amun/build/amun
AMUN_PATH=${AMUN:-$AMUN_DEFAULT}

if [ ! -s $AMUN_PATH ]; then
    echo "Could not find amun executable: $AMUN_PATH"
    exit 1
fi

AMUN_REALPATH=`realpath -q $AMUN_PATH`

EXITCODE=0

for test in `ls -d $TESTS`; do
    cd $test
    time -p make -i AMUN=$AMUN_REALPATH 2> err
    if grep -qi "make:.* error" err; then
        EXITCODE=1
    fi
    cd -
done

exit $EXITCODE
