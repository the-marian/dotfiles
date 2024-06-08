# Initialize starship
eval "$(starship init zsh)"

# Set environment variables
export GOPATH=$(go env GOPATH)
export CONFIG_FILE_API_PATH=deploy/config/api.yaml
export CONFIG_FILE_WORKER_PATH=deploy/config/worker.yaml
export GOPRIVATE="github.com/wpengine/*"
export EDITOR="nvim"

# Add paths to the PATH environment variable
export PATH="$GOPATH/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/share/google/google-cloud-sdk/bin/:$PATH"

# Set the directory we want to store zinit and plugins
export ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source secrets file
source "$HOME/.secrets.sh"

# Aliases
alias n='nvim'

alias el='n ~/.config/nvim'

alias ez='n ~/.zshrc'

alias sz='source ~/.zshrc'

alias ..='cd ..'

# ls
alias ls='ls --color=auto'
alias ll='ls -la'
alias la='ls -lathr'

alias gg='lazygit'

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zi ice wait lucid for zsh-users/zsh-syntax-highlighting
zi ice wait for zsh-users/zsh-autosuggestions
zi ice wait for Aloxaf/fzf-tab
zi for \
    atload"zicompinit; zicdreplay" \
    blockf \
    lucid \
    wait \
  zsh-users/zsh-completions

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

# History
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':completion:*:make:*:targets' call-command true
zstyle ':completion:*:*:make:*' tag-order 'targets' 
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

# Update PATH for the Google Cloud SDK
if [ -f '/Users/ultron/google-cloud-sdk/path.zsh.inc' ]; then
	. '/Users/ultron/google-cloud-sdk/path.zsh.inc'
fi
