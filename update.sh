#!/bin/bash
echo "Updating..." | lolcat
rm /Users/calebadams/Documents/Development/PiePieNinja.zshrc/my.zshrc
cp ~/.zshrc /Users/calebadams/Documents/Development/PiePieNinja.zshrc/my.zshrc
cd /Users/calebadams/Documents/Development/PiePieNinja.zshrc/
git add --all
git commit -am "standard automatic backup/update"
git push
echo "DONE!" | lolcat
