#!/bin/bash

errcount=0

error_handler () {
    echo "Trapped error - ${1:-"Unknown Error"}" 1>&2
    (( errcount++ ))       # or (( errcount += $? ))
}

trap error_handler ERR

docker build -t quay.io/geonet/rpmbuild:latest .

exit $errcount

# vim: tabstop=4 expandtab shiftwidth=4 softtabstop=4
