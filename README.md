# dotfiles

How to use: 
```
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo ".dotfiles" >> .gitignore
git clone --bare git@github.com:the-marian/dotfiles.git $HOME/.dotfiles
config checkout
```

Last step `config checkout` might fail with a message like:
```
error: The following untracked working tree files would be overwritten by checkout:
    .zshrc
    .config/nvim/...
Please move or remove them before you can switch branches.
Aborting
```

You could backup back up the current configuration with: 
```
mkdir -p .config-backup && config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
```

or just delete all conflicting files and re-run the `config checkout` command
