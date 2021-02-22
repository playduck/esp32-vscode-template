#!/bin/bash

if [ -z "$1" -a "$1" != " " ]; then
    echo "Invalid Argument: Name is empty"
    echo "Usage: ${0} {NEW_PROJECT_NAME}"
    exit 1
fi

sed -i -e 's/project\((.*)\)$/project('${1}')/g' "CMakeLists.txt"  > /dev/null
sed -i -e 's/PROJECT_NAME\ :=.*$/PROJECT_NAME := '${1}'/g' "Makefile"  > /dev/null
sed -i -e '1 s/^# .*/# '${1}'/g' "README.md" > /dev/null

rm ./*.*-e
rm ./*-e
