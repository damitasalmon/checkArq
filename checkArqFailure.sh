#!/bin/sh
OUTPUT_LOG="/Users/Shared/arqLog"

/bin/cat /Library/Application\ Support/ArqAgent/logs/backup/$(ls -1tr /Library/Application\ Support/ArqAgent/logs/backup/ | tail -n 1) > $OUTPUT_LOG
#if you find these words, all good. Else Backup failure.
if grep -q 'Uploaded|No changes' $OUTPUT_LOG; then
  echo false
else
    echo true
fi

exit 0