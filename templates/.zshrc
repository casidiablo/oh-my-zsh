ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gentoo"

CASE_SENSITIVE="true"
plugins=(git macports git-extras jira mvn heroku sublime mercurial node npm lein hg zsh-syntax-highlighting brew osx history-substring-search)

source $ZSH/oh-my-zsh.sh

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

alias ec="/usr/local/Cellar/emacs/24.3/Emacs.app/Contents/MacOS/Emacs"
alias ttt="tmux -S /tmp/shared attach -r"
alias gcod="git checkout develop"
alias gmod="git merge origin/develop"
alias gcomd="gcod && gmod"

export JAVA8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home
export JAVA_HOME=$(/usr/libexec/java_home -d64 -v '1.7*')
export DOCKER_HOST=tcp://127.0.0.1:4243
alias gw="./gradlew"
alias hb="hub browse"
alias hpr="hub pull-request -b develop"
fortune | cowsay
alias clone="git clone"
