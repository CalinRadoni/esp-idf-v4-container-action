#!/bin/bash

declare -i res

. ${IDF_PATH}/export.sh

idf.py build
res=$?

echo "::set-output name=result::$res"
