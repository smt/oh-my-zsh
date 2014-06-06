# The one true EDITOR
export EDITOR=vim

# My usual projects folder
export SRC=$HOME/src

# Dropbox folder
export DROPBOX=$HOME/Dropbox

# GO
export GOROOT=$HOME/.go
export GOPATH=$SRC/go

# Load php-version
if [[ -s "$(brew --prefix php-version)" ]]; then
    export PHP_VERSIONS="/usr/bin/php"
    source "$(brew --prefix php-version)/php-version.sh"
    # php-version 5
fi
