#!/bin/bash

db="gunDB.sqlite"
rm -f ${db}
touch ${db}

sqlite3 ${db} < dataTable.sql
