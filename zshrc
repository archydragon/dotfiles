HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mayoi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#

if [[ ${(%):-%n} = mayoi ]]; then
    PROMPT=$'[%B%F{green}%m%f%b] %F{white}%~%f %# '
elif [[ ${(%):-%n} = root ]]; then
     PROMPT=$'[%B%F{green}%m%f%b] %F{white}%~%f %B%F{red}%#%f%b '
else
    PROMPT=$'[%F{blue}%n%f@%B%F{green}%m%f%b] %F{white}%~%f %# '
fi

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

##Set some keybindings
################################################
typeset -g -A key
bindkey '^?' backward-delete-char
bindkey '^[[7~' beginning-of-line
bindkey '^[[5~' up-line-or-history
bindkey '^[[3~' delete-char
bindkey '^[[8~' end-of-line
bindkey '^[[6~' down-line-or-history
bindkey '^[[A' up-line-or-search
bindkey '^[[D' backward-char
bindkey '^[[B' down-line-or-search
bindkey '^[[C' forward-char 
bindkey '^[[2~' overwrite-mode

bindkey -e
##################################################

case $TERM in
  *xterm*)
    precmd () {print -Pn "\e]0;%m: %~\a"}
    ;;
esac

alias 'ls'='ls -FHG'
alias 'grep'='grep --color=auto'
alias 'cal'='cal -y'
alias 'vim'='vim -n'
alias 'erun'='erl -pa src -pa deps/\*/src'

st() {
    ssh "$*" -t tmux a -d
}

export EDITOR=/usr/bin/vim

PATH=$PATH:~/bin

source $HOME/.dotfiles/zshrc_local

