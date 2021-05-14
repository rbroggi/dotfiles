# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

export VISUAL=vim
export EDITOR="$VISUAL"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

#go
export GOROOT="$HOME/go_root"
export GOPATH="$HOME/go"

# PATH additions

# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$PATH:$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':')"
export PATH="$PATH:$(du "$HOME/.commands/" | cut -f2 | tr '\n' ':')"

# Adds anyconnect vpn access
export PATH="$PATH:/opt/cisco/anyconnect/bin"

# Adds screenlayouts to the path
export PATH="$PATH:${HOME}/.screenlayout"

#JetBrains
export PATH="$PATH:$HOME/.programs/clion-2019.1/bin:$HOME/.programs/idea-IU-202.7660.26/bin:$HOME/.programs/pycharm-2019.1.1/bin:$HOME/.programs/WebStorm-202.6948.73/bin:$HOME/.programs/GoLand-2020.3.1/bin:$HOME/.programs/ulam:"

#Bat (enhanced cat)
export PATH="$PATH:$HOME/.programs/bat-v0.12.1-x86_64-unknown-linux-gnu"
export BAT_THEME="1337"

#tts
export PATH="$PATH:$HOME/.programs/tts"

#Visual services
export PATH="$PATH:$HOME/.programs/visual-services"

#AT - amadeus_terminal
export PATH="$PATH:$HOME/.programs/amadeus_terminal/amadeus_terminal"

#oc
export PATH="$PATH:$HOME/.programs/oc/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit"

#go binaries
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"

#pachctl - pachiderm
export PATH="$PATH:$HOME/.programs/pachctl"

#mvn - maven
export PATH="$PATH:$HOME/.programs/mvn/apache-maven-3.6.3/bin"

#rust bin
export PATH="$HOME/.cargo/bin:$PATH"

#citrix
export ICAROOT="/home/rbroggi/.programs/ICAClient/linuxx64"

# VSCode code
export PATH="$PATH:$HOME/.programs/VSCode-linux-x64/bin"

# Minikube
export PATH="$PATH:$HOME/.programs/minikube"

# Linkerd
export "PATH=$PATH:/home/rbroggi/.linkerd2/bin"
