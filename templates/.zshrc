ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

CASE_SENSITIVE="true"

plugins=(git macports git-extras jira mvn heroku sublime mercurial node npm lein)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/opt/local/bin:~/bin

alias grep='grep --color'
export M2_HOME="/usr/share/maven/"
export ANDROID_HOME=/Users/cristian/dev/android-sdk/
export NDK=~/dev/android-ndk-r8d
export NDK_BASE=$NDK
export PATH=$PATH:/opt/local/bin:/opt/local/sbin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$NDK:~/bin/:$HOME/idea/vogar/bin/
export ANDROID_NDK_HOME=$NDK

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Some aliases...
alias o=open
alias mci='mvn clean source:jar install'
alias mi='mvn source:jar install'
alias mdci='mvn -DskipTests=true clean source:jar install'
alias mc='mvn clean'
alias mtdply='mvn clean -DaltDeploymentRepository=telly-sonatype-nexus-snapshot::default::https://oss.sonatype.org/content/repositories/snapshots/ deploy'
