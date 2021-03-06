#!/usr/bin/env bash
SQLITE3=${SQLITE3:-sqlite3}
CMIP6DB=${CMIP6DB:-CMIP6.sql3}

for realm in $(${SQLITE3} "${CMIP6DB}" \
                'select distinct mipTable from CMORvar'); do
    filename="CMIP6_${realm}.json"
    #echo "Creating: ${filename}"
    echo "python CMORCreateTable.py -r ${realm} -j  > /tmp/${filename}"
    echo "python CMORCreateTable.py -r ${realm} -j  > /tmp/${filename}" |sh
done
exit 0
