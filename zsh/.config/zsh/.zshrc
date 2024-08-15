# activate antidote for later use
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
zstyle ':antidote:bundle' use-friendly-names 'yes'
antidote-load

for file in $ZDOTDIR/conf.d/*.zsh; do
    source "$file"
done
