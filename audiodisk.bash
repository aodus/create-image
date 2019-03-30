#!/bin/bash -x

# argument
if [[ -z $1 ]]; then
        echo "filename argument not setting"
        exit 1
fi

DIRNAME=Unknown_Artist-Unknown_Album
OFNAME=$1
# check file exists
if [[ -e ./${DIRNAME}/${OFNAME}.wav ]]; then
        echo "output file already exists"
        exit 1
fi

abcde -1 -n -N -x -a default,cue -o wav

mv ${DIRNAME}/Unknown_Album.wav ${DIRNAME}/${OFNAME}.wav
mv ${DIRNAME}/Unknown_Album.cue ${DIRNAME}/${OFNAME}.cue

sed -i -e "s/Unknown_Album.wav/${OFNAME}.wav/" ${DIRNAME}/${OFNAME}.cue 
