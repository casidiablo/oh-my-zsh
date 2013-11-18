ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gentoo"

CASE_SENSITIVE="true"
plugins=(git macports git-extras jira mvn heroku sublime mercurial node npm lein hg zsh-syntax-highlighting brew osx history-substring-search)

source $ZSH/oh-my-zsh.sh

export GRADLE_HOME=/usr/local/opt/gradle

alias grep='grep --color'
export M3_HOME="/usr/share/maven/"
export ANDROID_HOME=$HOME/dev/android-sdk
export ANDROID_TOOLS=$ANDROID_HOME/build-tools/18.1.1
export NDK=~/dev/android-ndk
export NDK_BASE=$NDK
export ANDROID_NDK_HOME=$NDK
export RVM_HOME=$HOME/.rvm/bin
export HEROKU_BIN=/usr/local/heroku/bin

# ... add preceding paths to $PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
# ... add opt paths
export PATH=$PATH:/opt/local/bin:/opt/local/sbin:/usr/local/sbin
# ... add android paths
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$NDK:~/bin:$ANDROID_TOOLS
# ... add heroku and rvm paths
export PATH=$PATH:$HEROKU_BIN:$RVM_HOME

### Some aliases...
alias o=open
alias mci='mvn clean source:jar install'
alias mi='mvn source:jar install'
alias mdci='mvn -DskipTests=true clean source:jar install'
alias mc='mvn clean'
alias mtdply='mvn clean -DaltDeploymentRepository=telly-sonatype-nexus-snapshot::default::https://oss.sonatype.org/content/repositories/snapshots/ deploy'
alias ec='emacsclient -t'
alias caffeine='caffeinate -d &'
alias decaff="ps -ef | grep caffeinate | grep -v grep | awk '{print $2}' | xargs kill -9"
alias cat="pygmentize -g"

# Enables git today alias
git config --global alias.today "log --since=midnight --author='$(git config user.name)' --oneline"

export MAVEN_OPTS="-javaagent:$HOME/.m2/maven-color-agent-0.3.jar"
