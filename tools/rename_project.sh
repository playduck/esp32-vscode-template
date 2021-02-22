#!/bin/bash

if [ -z "$1" -a "$1" != " " ]; then
    echo "Invalid Argument: Name is empty"
    echo "Usage: ${0} {NEW_PROJECT_NAME}"
    exit 1
fi

sed -i 's/project\((.*)\)$/project('${1}')/g' "CMakeLists.txt"
sed -i 's/PROJECT_NAME\ :=.*$/PROJECT_NAME := '${1}'/g' "Makefile"
sed -i '1 s/^# .*/# '${1}'/g' "README.md"
