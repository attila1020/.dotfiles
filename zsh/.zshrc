
export ZSH="$HOME/.oh-my-zsh"


# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#
#ZSH_THEME="robbyrussell"
#ZSH_THEME="gozilla"
#ZSH_THEME="gallois"

plugins=(git)

source $ZSH/oh-my-zsh.sh


# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

source ~/.dotfiles/zsh/.aliases
source ~/.dotfiles/zsh/.functions


export PATH=~/dev/tmp:"$PATH"
export GOBIN=~/go/bin
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin


#### ------------------------------

#### exa - Color Scheme Definitions

#### ------------------------------

export EXA_COLORS="\
uu=36:\
gu=37:\
sn=32:\
sb=32:\
da=34:\
ur=34:\
uw=35:\
ux=36:\
ue=36:\
gr=34:\
gw=35:\
gx=36:\
tr=34:\
tw=35:\
tx=36:"



eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(starship init zsh)"
