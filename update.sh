#!/bin/bash
echo "Updating..." | lolcat
rm /Users/calebadams/Documents/Development/PiePieNinja.zshrc/my.zshrc
cp ~/.zshrc /Users/calebadams/Documents/Development/PiePieNinja.zshrc/my.zshrc
cd /Users/calebadams/Documents/Development/PiePieNinja.zshrc/
git add --all
echo ">> Enter A Commit Message:" | lolcat
read commitmessage
git commit -am "${commitmessage}"
git push
echo "DONE!" | lolcat
