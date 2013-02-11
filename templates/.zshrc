ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"

CASE_SENSITIVE="true"

plugins=(git macports git-extras jira mvn heroku sublime mercurial)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/opt/local/bin:~/bin

alias grep='grep --color'
export M2_HOME="/usr/share/maven/"
export ANDROID_HOME=/Users/cristian/dev/android-sdk/
export PATH=$PATH:~/bin/
export NDK=~/dev/android-ndk-r8d
export NDK_BASE=$NDK
export PATH=/opt/local/bin:/opt/local/sbin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$NDK:$PATH
export ANDROID_NDK_HOME=$NDK

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
