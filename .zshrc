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


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ultron/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ultron/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ultron/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ultron/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

