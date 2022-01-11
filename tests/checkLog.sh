#!/bin/sh
OUTPUT_LOG="/Users/Shared/arqLog"

/bin/cat /Library/Application\ Support/ArqAgent/logs/backup/$(ls -1tr /Library/Application\ Support/ArqAgent/logs/backup/ | tail -n 1) > $OUTPUT_LOG

#/bin/cat /Users/Shared/arqLog | grep -E -B6 -- 'Uploaded|No changes'

if grep -q 'Uploaded|No changes' $OUTPUT_LOG; then
  echo true
else
    echo false
fi

exit 0