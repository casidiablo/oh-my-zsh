ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gentoo"

CASE_SENSITIVE="true"

plugins=(git macports git-extras jira mvn heroku sublime mercurial node npm lein hg)

source $ZSH/oh-my-zsh.sh

export GRADLE_HOME=$HOME/dev/gradle-1.6

alias grep='grep --color'
export M2_HOME="/usr/share/maven/"
export ANDROID_HOME=$HOME/dev/android-sdk
export NDK=~/dev/android-ndk
export NDK_BASE=$NDK
export ANDROID_NDK_HOME=$NDK
export RVM_HOME=$HOME/.rvm/bin
export HEROKU_BIN=/usr/local/heroku/bin

# ... add preceding paths to $PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
# ... add opt paths
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
# ... add android paths
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$NDK:~/bin:$GRADLE_HOME/bin
# ... add heroku and rvm paths
export PATH=$PATH:$HEROKU_BIN:$RVM_HOME

### Some aliases...
alias o=open
alias mci='mvn clean source:jar install'
alias mi='mvn source:jar install'
alias mdci='mvn -DskipTests=true clean source:jar install'
alias mc='mvn clean'
alias mtdply='mvn clean -DaltDeploymentRepository=telly-sonatype-nexus-snapshot::default::https://oss.sonatype.org/content/repositories/snapshots/ deploy'
alias nano='emacsclient -t'
