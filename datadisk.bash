#!/bin/bash -x

OFNAME=$1
if [[ -z ${OFNAME} ]]; then
        OFNAME=$(volname /dev/sr0 | tr -d " \n")
        if [[ -z ${OFNAME} ]]; then
                echo "volname not found"
                exit 1
        fi
fi

# check file exists
if [[ -e ./iso/${OFNAME}.iso ]]; then
        echo "iso file already exists"
        exit 1
fi

ddrescue -d -n -v /dev/sr0 ./iso/${OFNAME}.iso ./iso/${OFNAME}.log && sleep 5 && eject
