# dotfiles

How to use: 
```
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo ".dotfiles" >> .gitignore
git clone --bare git@github.com:the-marian/dotfiles.git $HOME/.dotfiles
config checkout
config config --local status.showUntrackedFiles no
```

The `config checkout` step might fail with a message like:
```
error: The following untracked working tree files would be overwritten by checkout:
    .zshrc
    .config/nvim/...
Please move or remove them before you can switch branches.
Aborting
```

You could backup back up the current configuration with: 
```
mkdir -p .config-backup && config checkout 2>&1 | egrep "\s+\S*\.\S+" | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
```

or just delete all conflicting files
```
config checkout 2>&1 | egrep "\s+\S*\.\S+" | awk {'print $1'} | xargs -I {} rm {}
```
and re-run the `config checkout` command
