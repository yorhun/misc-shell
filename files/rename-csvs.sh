#!/bin/bash

# find all source.csv files under the path data and rename them by giving them a suffix

find data -name "source.csv" -exec sh -c 'mv "$1" "${1%.csv}_suffix.csv"' _ {} \;

# to test without executing, just echo the output:

find data -name "source.csv" -exec sh -c 'echo mv "$1" "${1%.csv}_suffix.csv"' _ {} \;

# example usage: (this usage excludes the path that is equal to today's date such as 2025-01-16)

TODAY=$(date +%Y-%m-%d)
find data -name "source.csv" ! -path "*/$TODAY/*" -exec bash -c 'mv "$1" "${1%.csv}_extra_0.csv"' _ {} \;
