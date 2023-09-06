# export ZSH="$HOME/.oh-my-zsh"

export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export CONFIG_FILE_PATH=deploy/config/localdev/hosting.yaml

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

source $HOME/.secrets.sh

ZSH_THEME="robbyrussell"

alias n=nvim
alias k=kubectl
alias d=docker

alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias lg='lazygit'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

