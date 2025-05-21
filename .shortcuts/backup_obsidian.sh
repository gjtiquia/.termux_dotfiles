#!/bin/bash

cd ~/documents/obsidian-vault

echo "git add"
git add .

echo "git commit"
git commit -am "android vault backup: `date +'%Y-%m-%d %H-%M-%S'`"

echo "git push"
git push

echo ""
echo "[Press Enter to exit]"
read
