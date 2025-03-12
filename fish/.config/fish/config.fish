# set language
set -gx LANG en_US.UTF-8
set -gx LC_CTYPE en_US.UTF-8

# setup XDG directories
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_CACHE_HOME $HOME/.cache

# setup base dirs for tools
set -gx RUSTUP_HOME $XDG_CONFIG_HOME/rustup
set -gx CARGO_HOME $XDG_CONFIG_HOME/cargo

# configure tokens/keys
set -gx SOPS_AGE_KEY_FILE $HOME/.config/age/age-personal

if test -x /opt/homebrew/bin/brew
    # add env vars for homebrew
    /opt/homebrew/bin/brew shellenv | source
end

# specify basic tools
set -gx VISUAL nvim
set -gx EDITOR nvim
set -gx PAGER bat
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"

fish_vi_key_bindings
