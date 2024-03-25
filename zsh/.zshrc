
export ZSH="$HOME/.oh-my-zsh"


# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#
#ZSH_THEME="robbyrussell"
#ZSH_THEME="gozilla"
#ZSH_THEME="gallois"

plugins=(git zsh-autosuggestions z)

source $ZSH/oh-my-zsh.sh

[[ -f ~/.dotfiles/zsh/aliases.zsh ]] && source ~/.dotfiles/zsh/aliases.zsh
[[ -f ~/.dotfiles/zsh/functions.zsh ]] && source ~/.dotfiles/zsh/functions.zsh

export PATH=~/dev/tmp:"$PATH"

### ---- GO config -----------------------

export GOBIN=~/go/bin
export GOPATH=~/go
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


### ---- exa config --------------------------
if [[ -n "$(which exa)" ]]; then
    ### ---- exa - Color Scheme Definitions ------------------
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
fi


### ---- Load Linuxbrew ------------------------------
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

### ---- Load Starship -------------------------------
eval "$(starship init zsh)"
