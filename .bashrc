# Initialize starship
eval "$(starship init bash)"

# Initialize zoxide
eval "$(zoxide init --cmd cd bash)"

set -o vi

# Set greeting message to empty (suppress the default greeting)
export BASH_SILENCE_DEPRECATION_WARNING=1

export HISTSIZE=10000
export HISTFILESIZE=10000

# Set environment variables
export GOPATH=$(go env GOPATH)
export CONFIG_FILE_API_PATH=deploy/config/api.yaml
export CONFIG_FILE_WORKER_PATH=deploy/config/worker.yaml
export GOPRIVATE="github.com/wpengine/*"

# Add paths to the PATH environment variable
export PATH="$GOPATH/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/share/google/google-cloud-sdk/bin/:$PATH"

export EDITOR="nvim"

# Source secrets file
source "$HOME/.secrets.sh"

# Aliases
alias n='nvim'
alias k='kubectl'
alias d='docker'
alias g='git'

alias el='n ~/.config/nvim'

alias eb='n ~/.bashrc'
alias ebp='n ~/.bash_profile'

alias sb='source ~/.bashrc && source ~/.bash_profile'

alias ..='cd ..'

# ls
alias ls='ls --color=auto'
alias ll='ls -la'
alias la='ls -lathr'
alias lt='ls --tree' # Note: `ls` does not support `--tree` in most distributions. You might need to use `tree` or install it if necessary.

# git
alias gg='lazygit'

alias gc='git chechout'
alias gcm='git checkout main'
alias gb='git checkout -b'
alias gp='git pull'

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Update PATH for the Google Cloud SDK
if [ -f '/Users/ultron/google-cloud-sdk/path.bash.inc' ]; then
	. '/Users/ultron/google-cloud-sdk/path.bash.inc'
fi
