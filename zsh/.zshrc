export ZSH="$HOME/.oh-my-zsh"


# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#
#ZSH_THEME="robbyrussell"
#ZSH_THEME="gozilla"
#ZSH_THEME="gallois"

plugins=(git zsh-autosuggestions z)

source $ZSH/oh-my-zsh.sh

[[ -f $HOME/.dotfiles/zsh/aliases.zsh ]] && source $HOME/.dotfiles/zsh/aliases.zsh
[[ -f $HOME/.dotfiles/zsh/functions.zsh ]] && source $HOME/.dotfiles/zsh/functions.zsh

export PATH=$HOME/dev/tmp:"$PATH"

### ---- GO config -----------------------

export GOBIN=$HOME/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export LESSHISTFILE=-


# TODO: Check if works
### ---- FZF config ------------------------
export FZF_DEFAULT_COMMAND="rg \
    --files \
    --hidden \
    --follow \
    --no-ignore-vcs \
"  
export FZF_DEFAULT_OPTS="--color=dark --reverse --cycle --border=rounded"


### ---- Load Linuxbrew ------------------------------
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

### ---- Load Starship -------------------------------
if command -v starship &>/dev/null; then
  eval "$(starship init zsh)"
fi

if command -v atuin &> /dev/null; then
  eval "$(atuin init zsh)"
fi
