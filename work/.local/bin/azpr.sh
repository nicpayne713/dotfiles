#! /bin/bash
# pick multiple emails from list and combine into comma seperated array
# emails=`cat ~/dotfiles/work/.caterpillar/emails | fzf -m | sed 's/^\|$/"/g'|paste -sd,` 

read -p "Pick reviewers (hit enter)"
emails=`cat ~/dotfiles/work/.caterpillar/emails | fzf -m | sed 's/^\|$//g'|paste -sd,` 

read -p "PR Title: " title

read -p "Target Branch: " target

read -p "Squash? (y/n): " squash 
if [ $squash == "y" ]
then
    squash="--squash"
else
    squash=""
fi

read -p "Draft? (y/n): " draft 
if [ $draft == "y" ]
then
    draft="--draft"
else
    draft=""
fi

echo "az repos pr create -o table --target-branch $target --title \"$title\" --reviewers \"$emails\" $squash $draft"
# `az repos pr create -o table --target-branch $target --title \"$title\" --reviewers \"$emails\" $squash $draft`
