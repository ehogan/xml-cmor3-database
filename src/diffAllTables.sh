#!/usr/bin/env bash
ARRAY=(Amon LImon Lmon emMon  Omon Oclim Oday Oyr SIday SImon grids aero 3hr 6hrLev 6hrPlev cf3hr cfDay cfMon cfsites day fx)
ARRAY=(3hr 6hrLev 6hrPlev 6hrPlevpt aerannual aerdaily aerfixed aerhourly aermonthly aero Amon AmonAdj cf3hr cfDay cfMon cfOff cfsites CORDEX_day day em em1hr em1hrclimmon em3hr em3hrpt emDay emDaypt emDayZ emFx emMon emMonclim emMonpt emMonZ emSubhr emYr fx LImon Lmon Oclim Oday Ofx Omon Oyr SIday SImon)


for realm in ${ARRAY[@]}; do
    filename="CMIP6_${realm}.json"
    echo $filename
    diff /tmp/$filename .
done
exit 0
