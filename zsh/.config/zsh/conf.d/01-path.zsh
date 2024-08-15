# path has to be set in .zshrc and not .zshenv because macOS messes with the path after .zshenv is read
path=(
  ${HOME}/{,s}bin(N)
  ${HOME}/.local/bin
  ${HOME}/.config/rustup/bin
  ${HOME}/.config/cargo/bin
  ${HOME}/.krew/bin
  /usr/local/{,s}bin(N)
  $path
)

# deduplicate path variables
typeset -gU path PATH
