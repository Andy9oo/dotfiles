# Set fish greeting
set -g -x fish_greeting ''

# Setup aliases
alias c "code . && exit"
alias o "xdg-open"

# PATH variables
set PATH /home/andrew/Code/work/tools/bin $PATH
set PATH /home/andrew/go/bin $PATH
set PATH /usr/local/go/bin $PATH

# Exports
set -x ANDROID_HOME /home/andrew/.android-sdk
set -x GOPATH /home/andrew/go
