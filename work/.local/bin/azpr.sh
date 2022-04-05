#! /bin/bash
# pick multiple emails from list and combine into comma seperated array
# emails=`cat ~/dotfiles/work/.caterpillar/emails | fzf -m | sed 's/^\|$/"/g'|paste -sd,` 
emails=`cat ~/dotfiles/work/.caterpillar/email.examples | fzf -m | sed 's/^\|$/"/g'|paste -sd,` 

echo $emails

