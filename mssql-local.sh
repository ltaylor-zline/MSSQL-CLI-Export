#!/bin/sh
ARGS=$@
mssql-cli -S 127.0.0.1 -d edi_database -U sa -P `cat secrets/pass.txt` $ARGS
