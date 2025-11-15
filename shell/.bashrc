##
# ~/.bashrc
##

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias tree='tree -C --dirsfirst'

# remove duplicate entries from history
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100
HISTFILESIZE=200

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Show current git branch in prompt.
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PETROL="\[\033[0;38;5;67m\]"
PETROL_LIGHT="\[\033[0;38;5;109m\]"
ORANGE="\[\033[0;38;5;208m\]"
YELLOW="\[\033[0;38;5;226m\]"
RESET_COLOR="\[\033[0;0m\]"
#PS1="$PETROL_LIGHT\w$PETROL\$(parse_git_branch)$RESET_COLOR\$ "
PS1="$ORANGE\w$YELLOW\$(parse_git_branch)$RESET_COLOR\$ "

# fnm
FNM_PATH="/home/red/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

alias npm='pnpm'
alias npx='pnpm dlx'

# Ativar e mostrar automaticamente a versão do Node ao entrar em uma pasta com .nvmrc
eval "$(fnm env --use-on-cd)"

cd() {
  builtin cd "$@" || return
  if [ -f .nvmrc ]; then
    fnm use > /dev/null
    echo "→ Node version: $(node -v)"
  fi
}

# Path
export PATH="$HOME/.local/bin:$PATH"

