#!/bin/zsh
echo "Updating..." | lolcat
cd ${REPO_PATH}
git pull
# >> NOTE <<
# REPO_PATH is defined in the .zshrc file and must be changed to point to your repo 
echo "Path to Github Repo: ${REPO_PATH}"
# adds the new .zshrc to the repo
rm ${REPO_PATH}/my.zshrc
cp ~/.zshrc ${REPO_PATH}/my.zshrc
# adds the new theme to the repo
rm ${REPO_PATH}/piepieninja.zsh-theme
cp ~/.oh-my-zsh/themes/piepieninja.zsh-theme ${REPO_PATH}/piepieninja.zsh-theme
cd ${REPO_PATH}
git add --all
echo ">> Enter A Commit Message:" | lolcat
read commitmessage
git commit -am "${commitmessage}"
git push
echo "DONE!" | lolcat
