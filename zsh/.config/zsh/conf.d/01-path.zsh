# path has to be set in .zshrc and not .zshenv because macOS messes with the path after .zshenv is read
path=(
  ${HOME}/.local/bin
  ${XDG_CONFIG_HOME}/rustup/bin
  ${XDG_CONFIG_HOME}/cargo/bin
  ${HOME}/.krew/bin
  /usr/local/{,s}bin(N)
  $path
)

# deduplicate path variables
typeset -gU path PATH
