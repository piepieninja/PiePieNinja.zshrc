#!/bin/bash
echo "Updating..." | lolcat
rm my.zshrc
cp ~/.zshrc my.zshrc
git add --all
git commit -am "standard update"
git push
echo "DONE!" | lolcat
