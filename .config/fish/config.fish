zoxide init fish | source

set -U fish_greeting

set -Ux GOPATH (go env GOPATH)
set -Ux CONFIG_FILE_PATH deploy/config/localdev/hosting.yaml

fish_add_path $GOPATH/bin
fish_add_path /opt/homebrew/bin

source $HOME/.secrets.sh

alias n=nvim
alias k=kubectl
alias d=docker

alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias lg='lazygit'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

