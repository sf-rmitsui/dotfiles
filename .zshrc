# Created by newuser for 5.0.5
export LANG=ja_JP.UTF-8

# Color
export LSCOLORS=Exfxcxdxbxegedabagacad
export ZLS_COLORS=$LS_COLORS
export CLICOLOR=true

# Prompt
PROMPT='%(?,%F{green},%F{red})[%n %~]%#%f '

# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

autoload -U compinit vcs_info
compinit -u

alias vi=vim
alias ll="ls -l"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias j="jobs"
alias f="fg"
alias .="source"
alias history="history -i 1"
alias gti="git"
alias igt="git"
alias awk="gawk"

DIRSTACKSIZE=100

# RPROMT
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '[%b]%u%c'
zstyle ':vcs_info:git:*' stagedstr '+'
zstyle ':vcs_info:git:*' unstagedstr '-'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
precmd () {
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
RPROMPT='%1(v|%F{yellow}%1v%f|)'

setopt auto_menu
setopt auto_cd
setopt no_beep
setopt auto_pushd
setopt multios
setopt print_eight_bit
setopt extended_history
setopt hist_reduce_blanks
setopt correct
setopt extended_history
setopt append_history
setopt inc_append_history
setopt hist_save_no_dups
setopt hist_no_functions
setopt hist_no_store
setopt hist_ignore_dups

# Command
export PATH=/usr/local/bin:$PATH

# Git
fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(ndenv init -)"
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/ryota.mitsui/.ndenv/versions/v10.4.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/ryota.mitsui/.ndenv/versions/v10.4.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/ryota.mitsui/.ndenv/versions/v10.4.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/ryota.mitsui/.ndenv/versions/v10.4.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
