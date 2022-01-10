#!/bin/sh
OUTPUT_LOG="/Users/Shared/arqLog2"

/bin/cat /Library/Application\ Support/ArqAgent/logs/backup/$(ls -1tr /Library/Application\ Support/ArqAgent/logs/backup/ | tail -n 1) > $OUTPUT_LOG

if grep -q 'Uploaded|No changes' $OUTPUT_LOG; then
  echo true
else
    echo false
fi

exit 0