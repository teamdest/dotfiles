
# switcher (kubeswitch) is a tool that sets the kubernetes context separately in each terminal session (e.g., tmux windows or panes each have separate contexts which don't clobber each other)
# it also provides useful convenience functions for switching context and namespace with an interactive fzf-driven picker
source <(switcher init zsh)
alias ktx="switch"
alias kns="switch ns"

# `kubecolor` is just a wrapper around `kubectl` that colorizes output a little bit 
alias k="kubecolor"

