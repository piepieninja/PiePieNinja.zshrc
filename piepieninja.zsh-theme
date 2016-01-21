# PIEPIENINJA!!!!!



# Grab the time (%t) wrapped in {}: {%t}
# uncomment to go back# DALLAS_CURRENT_TIME_="%{$fg[white]%}{%{$fg[yellow]%}%D %T%{$fg[white]%}}%{$reset_color%}"
CURRENT_TIME="%{$fg[white]%}{%{$fg[yellow]%}%t%{$fg[white]%}}%{$reset_color%}"

#========GIT========#
# For the git prompt, use a white @ and blue text for the branch name
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}@%{$fg[blue]%}"

# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Do nothing if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Add 1 cyan ✗ if this branch is diiirrrty! Dirty branch!
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[cyan]%}✗"

#=====functions=====#

# Grab the battery life!
function BATTERY(){
${REPO_PATH}/scripts/battery.rb
}

function GIT_PROMPT(){
git_prompt_info
}

function GIT_STATUS(){
parse_git_dirty
}

# Put it all together!
setopt promptsubst
PROMPT='$(BATTERY)$CURRENT_TIME%{$fg[cyan]%}%d$(GIT_PROMPT)$(GIT_STATUS) %{$fg[white]%}%(!.#.%{$fg[blue]%}○)%{$reset_color%} '