zoxide init fish | source

set -U fish_greeting

set -Ux GOPATH (go env GOPATH)
set -Ux CONFIG_FILE_API_PATH deploy/config/api.yaml
set -Ux CONFIG_FILE_WORKER_PATH deploy/config/worker.yaml
set -Ux GOPRIVATE "github.com/wpengine/*"

fish_add_path $GOPATH/bin
fish_add_path /opt/homebrew/bin
fish_add_path /usr/local/share/google/google-cloud-sdk/bin/

source $HOME/.secrets.sh

alias n=nvim
alias k=kubectl
alias d=docker

alias l='ls -l'
alias g='git'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias gg='lazygit'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ultron/google-cloud-sdk/path.fish.inc' ]; . '/Users/ultron/google-cloud-sdk/path.fish.inc'; end
