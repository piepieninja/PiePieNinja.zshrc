# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dallas"
# === bira is good
# === crunch is great

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

export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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
clear
screenfetch
date | lolcat
cal | lolcat

# ==== shell functions ====
# for the lolz
catz () {
    cat $* | lolcat
}

# ==== alias ====
# start emacs
alias e="emacs"
# edit zshell stuff
alias ze="emacs ~/.zshrc"
# for stats
alias stats="screenfetch"
# for safety
alias rm="rm -i"
# for the lolz and the catz
alias cat="catz"
#just because I love the stats
#alias clear="clear;screenfetch; date | lolcat; cal | lolcat;"
# because htop is cooler
#alias top="htop"
# clean all the things because I do this all the time
alias cl="rm *~"
# bring the pretty things back
alias pretty="clear;screenfetch;date | lolcat;cal | lolcat;"
# choo choo
alias train="while true; do; sl; done;"
# merry christmas
alias snow="/Users/calebadams/Documents/Development/PhantomMercenary/src/shell/snow.sh"
# for the lolz
alias doit="/Users/calebadams/Documents/Development/gistDoIt/JustDoIt.sh"
# moves to the dev folder!!!!
alias dev="~/Documents/Development"
# shows me the memory!!!
# TODO format this to look pretty
alias mem="df -h /"
alias hmem="df -h /;echo "SYSTEM" | lolcat; sudo du -sh /*;echo "USER" | lolcat; sudo du -sh ~/*"
