#!/bin/bash

errcount=0

error_handler () {
    echo "Trapped error - ${1:-"Unknown Error"}" 1>&2
    (( errcount++ ))       # or (( errcount += $? ))
}

trap error_handler ERR

if [ "$#" -ne 1 ]; then
  echo 'Bad number of arguments...'
  echo "Usage $0 <branch>  : branch as docker tag"
  exit 1
fi

docker build -t quay.io/geonet/rpmbuild:${1} .

exit $errcount

# vim: tabstop=4 expandtab shiftwidth=4 softtabstop=4
