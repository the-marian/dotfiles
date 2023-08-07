if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing homebrew packages..."

# cli tools
brew install tree
brew install wget

# development tools
brew install go
brew install lazygit
brew install git
brew install tmux
brew install lsd
brew install --cask alacritty



# install neovim
brew install neovim/neovim/neovim

exit 0
