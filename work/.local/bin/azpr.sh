#! /bin/bash
# pick multiple emails from list and combine into comma seperated array
emails=`cat ~/.caterpillar/emails | fzf -m | sed 's/^\|$/"/g'|paste -sd,` 

echo $emails

