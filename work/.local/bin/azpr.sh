#! /bin/bash
# pick multiple emails from list and combine into comma seperated array
# emails=`cat ~/dotfiles/work/.caterpillar/emails | fzf -m | sed 's/^\|$/"/g'|paste -sd,` 

read -p "Pick reviewers (hit enter)"
emails=`cat ~/dotfiles/work/.caterpillar/email.examples | fzf -m | sed 's/^\|$//g'|paste -sd,` 

read -p "PR Title: " title

read -p "Target Branch: " target

read -p "Squash? (y/n): " squash 

if [ $squash == "y" ]
then
    echo "az repos pr create -o table --target-branch $target --squash  --title \"$title\" --reviewers \"$emails\""
else
    echo "az repos pr create -o table --target-branch $target --title \"$title\" --reviewers \"$emails\""
fi

