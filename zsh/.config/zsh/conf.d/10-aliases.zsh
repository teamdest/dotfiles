# `dust``, `bat`, etc are modern substitutes for some common GNU tools. Usually the functionality is a superset of the original, though the behavior is not always identical.
# That's why these are sourced in .zshrc for my interactive shells, but anything running automatically should continue to use `bat`, `grep`, etc.
alias du="dust"
alias cat="bat"
alias grep="rg"
alias find="fd"
alias top='btop'
alias ls='eza -la --sort=name --smart-group --time-style=iso --git'

# `zoxide` is a similar "substitute" command (replaces `cd`), however it has a more involved configuration that is handled through an `init` sub-command
# the `--cmd` switch declares what command it is aliasing over, which is `cd` in this case.
eval "$(zoxide init --cmd cd zsh)"

# just some convenience for two common mis-types of `ls`
alias l=ls
alias la=ls

# similarly, I don't like typing `lazygit` every time
alias g="lazygit"
alias lg="lazygit"

alias zj="zellij"
