# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

export LC_ALL="en_US.UTF-8"
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

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


# homebrew
export BREW_DIR="$HOME/.linuxbrew"
if [ -d "$BREW_DIR" ] ; then
	export LD_LIBRARY="$BREW_DIR/lib:$LD_LIBRARY_PATH"
	export PATH="$BREW_DIR/bin:$PATH"
fi


# Set JAVA_HOME
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
if [ -d "$JAVA_HOME" ] ; then
	export PATH="$JAVA_HOME/bin:$PATH"
fi


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
export GVM_HOME="$HOME/.gvm"
if [ -d "$GVM_HOME" ] ; then
	source "$GVM_HOME/bin/gvm-init.sh"
fi


# ruby versions manager
export RVM_HOME="$HOME/.rvm"
[[ -s "$RVM_HOME/scripts/rvm" ]] && source "$RVM_HOME/scripts/rvm"


# nodejs versions manager
export NVM_DIR="$HOME/.nvm"
export NVM_NODEJS_ORG_MIRROR="http://nodejs.org/dist/"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"


# nodejs environment
export ELECTRON_MIRROR="https://npm.taobao.org/mirrors/electron/"
export SASS_BINARY_SITE="https://npm.taobao.org/mirrors/node-sass"
export PHANTOM_DIR="$HOME/Applications/phantomjs"
export PATH="$PHANTOM_DIR/bin:$PATH"


# npm environment
export NPM_DIR="$HOME/npm"
export PATH="$NPM_DIR/bin:$PATH"


# autojump plugin
[[ -s "$HOME/.autojump/etc/profile.d/autojump.sh" ]] && source "$HOME/.autojump/etc/profile.d/autojump.sh"


# python versions manager
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if [ -d "$PYENV_ROOT" ] ; then
	eval "$(pyenv init -)"
fi


# golang
export GOPATH="$HOME/go"
export GOROOT="$BREW_DIR/Cellar/go/1.5.1"
export PATH="$GOROOT/bin:$PATH"


# atom
export APM_DIR="/Applications/Atom.app/Contents/Resources/app/apm"
export GRADLE_HOME="$HOME/Applications/gradle-2.14.1"
export DOXYGEN="/Applications/Doxygen.app/Contents/Resources"
export PATH="$DOXYGEN:$PATH"


# default edtior
export EDITOR='vim'


# path
export PATH="$PATH:/usr/local/bin"


# === Alias Start ===
alias uwget=wget --user-agent="Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.204 Safari/534.16"
alias mux="tmuxinator"
alias sshb="ssh -p 29774 root@138.128.211.202"
alias lidea="sudo idea_license_server -u bobjoy"
alias rn="react-native"
alias rp="create-react-app"
alias chrome="$HOME/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --disable-web-security &"
# === Alias End ===


#echo
#echo "=============== Quote Of The Day ==============="
#echo
#fortune
#echo
#echo "================================================"
#echo


# archey
archey


#[[ -s "$HOME/.dotfiles/resolv.conf" ]] && sudo ln -s $HOME/.dotfiles/resolv.conf /etc/resolv.conf || echo "Resolv fail"

