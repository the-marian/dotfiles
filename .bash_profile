if [[ "$OSTYPE" == "darwin"* ]]; then
  # needed for brew
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export XDG_CONFIG_HOME="$HOME"/.config

if [ -r ~/.bashrc ]; then
  source ~/.bashrc
fi

# add bash completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

