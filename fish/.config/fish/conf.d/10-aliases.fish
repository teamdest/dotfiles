# Choose which binary certain common commands or shortcuts will actually run

# Use neovim as the `vi-like` editor
alias vim="nvim"
alias vi="vim"

# `dust``, `bat`, etc are modern substitutes for some common GNU tools. Usually the functionality is a superset of the original, though the behavior is not always identical.
# That's why these are sourced in .zshrc for my interactive shells, but anything running automatically should continue to use `bat`, `grep`, etc.
alias du="dust"
alias cat="bat"
alias grep="rg"
alias find="fd"
alias top='btop'
alias ls='eza --long --all --sort=name --smart-group --time-style=iso --git'

# `zoxide` is a similar "substitute" command (replaces `cd`), however it has a more involved configuration that is handled through an `init` sub-command
# once initialized, zoxide defines a "z" command which we alias cd to
zoxide init fish | source
alias cd="z"

# just some convenience for two common mis-types of `ls`
alias l=ls
alias la=ls

# similarly, I don't like typing `lazygit` every time
alias g="lazygit"
alias lg="lazygit"

alias zj="zellij"

# Aliases for the gitea CLI common actions
alias t="tea"
alias tic="t i c"

alias ytdlbase="yt-dlp -o '%(title)s.%(ext)s' --cookies-from-browser 'firefox::Google'"
alias ytdl="ytdlbase --merge-output-format mp4 -f 'bv+ba'"
alias ytcat="ytdlbase --merge-output-format mkv -f 'bv*[height<=1080][ext=mkv]+ba*[ext=mp3]'"
