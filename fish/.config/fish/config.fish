# set language
set -Ux LANG en_US.UTF-8
set -Ux LC_CTYPE en_US.UTF-8

# setup XDG directories
set -Ux XDG_CONFIG_HOME $HOME/.config
set -Ux XDG_DATA_HOME $HOME/.local/share
set -Ux XDG_CACHE_HOME $HOME/.cache

# setup base dirs for tools
set -Ux RUSTUP_HOME $XDG_CONFIG_HOME/rustup
set -Ux CARGO_HOME $XDG_CONFIG_HOME/cargo

# configure tokens/keys
set -Ux SOPS_AGE_KEY_FILE $HOME/.config/age/age-personal

if test -x /opt/homebrew/bin/brew
    # add env vars for homebrew
    /opt/homebrew/bin/brew shellenv | source
end

# specify basic tools
set -Ux VISUAL nvim
set -Ux EDITOR nvim
set -Ux PAGER bat
set -Ux MANPAGER "sh -c 'col -bx | bat -l man -p'"

fish_vi_key_bindings
