#!/bin/bash

# find all uncompressed files and compress them

find . -maxdepth 1 -type f ! -name "*.xz" ! -name "*.gz" ! -name "*.bz2" ! -name "*.zip" ! -name "*.7z" -exec xz -T0 {} \;

# T0 to use all threads
# maxdepth 1 for current dir
