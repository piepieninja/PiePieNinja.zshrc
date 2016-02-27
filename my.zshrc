# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export LANG="en_US.UTF-8"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="piepieninja"
# === dallas is fav
# === bira is good
# === crunch is great

# So the the right prompte isn't padded
#ZLE_RPROMPT_INDENT=0

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git thefuck)

# User configuration

# for python
export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"

# adds brew to the exports
export PATH="/usr/local/sbin:$PATH"

# for the free pascal compiler - http://www.toosquare.com/2014/07/install-pascal-on-os-x/
#export PATH=/usr/local/bin:$PATH

# for android adb
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools

# for the gmat software
export PATH=/bin:/usr/bin:/usr/local/bin:${PATH}

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='emacs'
else
    export EDITOR='emacs'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# this is for LaTex or MacTex or something:
PATH=$PATH:/usr/local/texlive/2014/bin/x86_64-darwin/

# show this awesome thing every time it opens:
wait 3
clear
screenfetch
date | lolcat
cal | lolcat
#source ~/.zshrc
#sleep 5

# ==== shell functions ====
# for the lolz
catz () {
    cat $* | lolcat
}

emp () {
    # check that Trash is not empty
    if [ "$(ls -A ~/.Trash/*)" ]; then
	echo "removing files from Trash ..." | lolcat
	# chflags -R nouchg *
	rm -rf ~/.Trash/*
	echo "DONE!" | lolcat
    else
	echo "Trash is already empty!" | lolcat
    fi

    # check that Downloads is not empty
    if [ "$(ls -A ~/Downloads/*)" ]; then
	echo "removing files from Downloads" | lolcat
	rm -rf ~/Downloads/*
	echo "DONE!" | lolcat
    else
	echo "Downloads is already empty!" | lolcat
    fi
}

emp2 () {
    # check that Trash is not empty
    if [ "$(ls -A ~/.Trash/*)" ]; then
        echo "removing files from Trash ..." | lolcat
        # chflags -R nouchg * 
	rm -rf ~/.Trash/*
        echo "DONE!" | lolcat
    else
        echo "Trash is already empty!" | lolcat
    fi
}

customsettings () {

    # Thanks https://gist.github.com/brandonb927

    echo ""
    echo "Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window"
    sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

    echo ""
    echo "Turn off keyboard illumination when computer is not used for 10 minutes"
    defaults write com.apple.BezelServices kDimTime -int 600

    echo ""
    echo "Disable keyboard from automatically adjusting backlight brightness in low light? (y/n)"
    read -r response
    if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
	sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Keyboard Enabled" -bool false
    fi

    echo ""
    echo "Show hidden files in Finder by default? (y/n)"
    read -r response
    if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
	defaults write com.apple.Finder AppleShowAllFiles -bool true
    fi

    echo ""
    echo "Show all filename extensions in Finder by default? (y/n)"
    read -r response
    if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
	defaults write NSGlobalDomain AppleShowAllExtensions -bool true
    fi

    echo ""
    echo "Disable the warning when changing a file extension? (y/n)"
    read -r response
    if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
	defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
    fi

    echo ""
    echo "Use column view in all Finder windows by default? (y/n)"
    read -r response
    if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
	defaults write com.apple.finder FXPreferredViewStyle Clmv
    fi

    echo ""
    echo "Where do you want screenshots to be stored? (hit ENTER if you want ~/Desktop as default)"
    # Thanks https://github.com/omgmog
    read screenshot_location
    echo ""
    if [ -z "${screenshot_location}" ]
    then
	# If nothing specified, we default to ~/Desktop
	screenshot_location="${HOME}/Desktop"
    else
	# Otherwise we use input
	if [[ "${screenshot_location:0:1}" != "/" ]]
	then
	    # If input doesn't start with /, assume it's relative to home
	    screenshot_location="${HOME}/${screenshot_location}"
	fi
    fi
    echo "Setting location to ${screenshot_location}"
    defaults write com.apple.screencapture location -string "${screenshot_location}"

    echo "Applying Custom Settings..."

    killall SystemUIServer

}

# ==== Custom Variables ====
# change this path so that it points to the git repository
REPO_PATH="/Users/calebadams/Documents/Development/PiePieNinja.zshrc"
DEV_PATH="~/Documents/Development"
# export them all!
export REPO_PATH
export DEV_PATH

# ==== alias ====
# start emacs
alias e="emacs"
# edit zshell stuff and easily go to config. for updating the zshell config
alias ze="emacs ~/.zshrc" # change this to your favorite editor
alias zt="emacs ~/.oh-my-zsh/themes/piepieninja.zsh-theme"
alias zconf="cd ${REPO_PATH}"
alias zload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
# for stats
alias stats="screenfetch"
# for safety
alias rm="rm -i"
# for the lolz and the catz
alias cat="catz"
# clean all the things because I do this all the time
alias cl="rm *~"
# bring the pretty things back
alias pretty="clear;screenfetch;date | lolcat;cal | lolcat;"
# choo choo
alias train="say 'choo choo';while true; do; sl; done;"
# merry christmas
alias snow="${REPO_PATH}/scripts/snow.sh"
# for the lolz
alias doit="${REPO_PATH}/scripts/JustDoIt.sh"
# moves to the dev folder!!!!
alias dev="cd ~/Documents/Development"
# shows me the memory!!!
# TODO format this to look pretty
alias mem="pwd;sudo du -hs"
alias umem="sudo df -h /"
alias hmem="sudo df -h /;echo "SYSTEM" | lolcat; sudo du -sh /*;echo "USER" | lolcat; sudo du -sh ~/*"
# the thing that updates my .zshrc and pushes it to my github!
alias zpush="${REPO_PATH}/scripts/update.zsh"
# for nicely emptying out all the stuff that I don't want
alias empty="emp2"
alias emptyall="emp"
