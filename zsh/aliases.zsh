_has() {
    return $(command -v $1 &> /dev/null)
}


### ---- Fuzzy Finder Search -----------------
alias f='fd --type f --hidden --exclude .git | fzf-tmux -p --border --margin=0,1 --preview "bat -f -P --plain {1}" | xargs -r nvim +'
alias comf='tldr --list | fzf --preview "tldr {1} --color" --preview-window=right,70% | xargs tldr'
# TODO:  alias manf='curl cht.sh'


### ---- Source .zshrc -----------------
alias s="source $HOME/.zshrc"


### ---- Basic commands -------------------
alias c="clear -x"
alias rm="rm -rf"
alias ..="cd .."
alias e="nvim"


### ---- Java --------------------
if _has java; then
    alias j="java Main.java && java Main"
fi


### ---- Open dotfiles dir -----------------
[[ -d $HOME/.dotfiles ]] && alias dot="cd $HOME/.dotfiles"


### ---- Lazygit alias -------------
_has lazygit && alias gg="lazygit"


### ---- Cat bat ------------------
if _has bat; then
    alias cat="bat";
fi


### ---- lsd and ls -----------------
if [ -x "$(command -v lsd)" ]; then
    alias l="lsd -lh -g --header --group-directories-first --blocks permission,user,size,date,git,name"
    alias ll="lsd -lAh -g --header --group-directories-first --blocks permission,user,size,date,git,name"
else
    alias l="ls -lF"
    alias ll="ls -alF"
fi
