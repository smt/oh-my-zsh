# primary dotfiles folder
# fix path in case of symlinks
export DOTS=$(cd "$HOME/.dots" && pwd -P)

# get path to script folder
SMT_ZSH="$( cd "$( dirname "$0" )" && pwd )"
# fix path in case of symlinks
export SMT_ZSH=$(cd "$SMT_ZSH" && pwd -P)
