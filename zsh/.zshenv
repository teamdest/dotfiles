# NOTE: .zshenv needs to live at ~/.zshenv, not in $ZDOTDIR!

# set language
export LANG=en_US.UTF-8 
export LC_CTYPE=en_US.UTF-8

# setup XDG directories
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CACHE_HOME="$HOME"/.cache

# setup base dirs for tools
export ZDOTDIR=${ZDOTDIR:-$XDG_CONFIG_HOME/zsh}
export RUSTUP_HOME="$XDG_CONFIG_HOME"/rustup
export CARGO_HOME="$XDG_CONFIG_HOME"/cargo
export ANTIDOTE_HOME="$XDG_CONFIG_HOME"/antidote

# configure tokens/keys
export SOPS_AGE_KEY_FILE=$HOME/.config/age/age-personal

if [[ -z /opt/homebrew/bin/brew ]]; then
  # add env vars for homebrew
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export HISTFILE="$ZDOTDIR"/.zsh_history
export SAVEHIST=100000

# specify basic tools
export VISUAL=nvim
export EDITOR=nvim
export PAGER=bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Set browser.
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER=${BROWSER:-open}
fi

if [[ $TERM_PROGRAM == "Apple_Terminal" ]]; then
  # disable zsh sessions (macOS Terminal.app behavior)
  export SHELL_SESSIONS_DISABLE=1
fi

# ensure path arrays do not contain duplicates.
typeset -gU path PATH
