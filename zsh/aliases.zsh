### ---- Fuzzy Finder Search -----------------
alias f='fd --type f --hidden --exclude .git | fzf-tmux -p --border --margin=0,1 --preview "bat -f -P --plain {1}" | xargs -r nvim +'

### ---- Source .zshrc -----------------
alias s="source $HOME/.zshrc"

### ---- Basic commands -------------------
alias c=clear
alias rm="rm -rf"
alias ..="cd .."
alias e="nvim"

### ---- Java --------------------
if command -v java &>/dev/null; then
    alias j="java Main.java && java Main"
fi



### ---- Open dotfiles dir -----------------
alias dot="cd ~/.dotfiles"

alias gg="lazygit"

### ---- Exa and ls -----------------
if command -v exa &>/dev/null; then
    alias l="exa -lh --git --icons"
    alias ll="exa -lah --git --icons"
else
    alias l="ls -lF"
    alias ll="ls -alF"
fi

### ---- Cat bat ------------------
if ! command -v bat &>/dev/null; then
    alias cat="bat";

fi