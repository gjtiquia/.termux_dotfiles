#!/bin/bash

cd ~/documents/obsidian-vault

echo "git add"
git add .

echo "git commit"
git commit -m "android commit before pull"

echo "git pull"
# this uses merge instead of default rebase
# also uses auto generated commit msg without edit
git pull --rebase=false --no-edit

echo ""
echo "[Press Enter to exit]"
read
