#!/bin/zsh
echo "Updating..." | lolcat
# >> NOTE <<
# REPO_PATH is defined in the .zshrc file and must be changed to point to your repo 
echo "Path to Github Repo: ${REPO_PATH}"
rm ${REPO_PATH}/my.zshrc
cp ~/.zshrc ${REPO_PATH}/my.zshrc
cd ${REPO_PATH}
git add --all
echo ">> Enter A Commit Message:" | lolcat
read commitmessage
git commit -am "${commitmessage}"
git push
echo "DONE!" | lolcat
