if test -d /usr/local/bin/
    fish_add_path /usr/local/bin
end
if test -d /usr/local/sbin/
    fish_add_path /usr/local/sbin
end
if test -d {$XDG_CONFIG_HOME}/cargo/bin
    fish_add_path {$XDG_CONFIG_HOME}/cargo/bin
end
if test -d {$HOME}/.krew/bin
    fish_add_path {$HOME}/.krew/bin
end
if test -d {$HOME}/.local/bin
    fish_add_path {$HOME}/.local/bin
end
