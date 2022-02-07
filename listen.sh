#!/bin/sh
./reset.sh

find ./queries -type f -print | entr -p ./run-and-append.sh /_