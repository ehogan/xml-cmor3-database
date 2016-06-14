#!/usr/bin/env bash
ARRAY=(Amon LImon Lmon emMon  Omon Oclim Oday Oyr SIday SImon grids aero 3hr 6hrLev 6hrPlev cf3hr cfDay cfMon cfsites day fx)

for realm in ${ARRAY[@]}; do
    filename="CMIP6_${realm}.json"
    echo $filename
    diff /tmp/$filename .
done
exit 0
