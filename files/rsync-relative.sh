#!/bin/bash

# to exclude today when syncing files

today=$(date +%Y-%m-%d)

rsync -rPvz --relative --ignore-existing --exclude="/$today/*" path/./relative-path-to-include/*filename-pattern* remote-host:/path/to/sync/

# use --dry-run to just test which file names will be synced without actually syncing

rsync -rPvz  --dry-run --relative --ignore-existing --exclude="/$today/*" path/./relative-path-to-include/*filename-pattern* remote-host:/path/to/sync/
