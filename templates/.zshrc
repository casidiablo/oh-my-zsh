ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gentoo"

CASE_SENSITIVE="true"
plugins=(git macports git-extras jira mvn heroku sublime mercurial node npm lein hg zsh-syntax-highlighting brew osx history-substring-search)

source $ZSH/oh-my-zsh.sh

alias grep='grep --color'
export M3_HOME="/usr/share/maven/"
#export ANDROID_HOME=$HOME/dev/android-sdk
#export ANDROID_TOOLS=$ANDROID_HOME/build-tools/18.1.1
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
alias c="pygmentize -g"

# Enables git today alias
git config --global alias.today "log --since=midnight --author='$(git config user.name)' --oneline"

alias ec="/usr/local/Cellar/emacs/24.3/Emacs.app/Contents/MacOS/Emacs"
alias ttt="tmux -S /tmp/shared attach -r"
alias gcod="git checkout develop"
alias gmod="git merge origin/develop"
alias gcomd="gcod && gmod"

export JAVA8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home

#os specific settings
if [[ `uname` = "Linux" ]]; then
    fortune | cowsay
else
    export JAVA_HOME=$(/usr/libexec/java_home -d64 -v '1.8')
    files=(/usr/local/Cellar/cowsay/3.03/share/cows/*)
    /bin/cat ~/.lasttweet | tweets-filter -trim-only | cowsay -f `echo ${files[$((RANDOM%${#files}))]}` | tweets-filter
    source /usr/local/opt/autoenv/activate.sh
    source ~/Dropbox/cred
    if [ -e /Users/cristian/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/cristian/.nix-profile/etc/profile.d/nix.sh; fi
fi

export DOCKER_HOST=tcp://127.0.0.1:4243

alias gw="./gradlew"
alias hb="hub browse"
alias hpr="hub pull-request -b develop"
alias clone="git clone"
alias tt="gw test"
alias grup='git remote | parallel git fetch --append | lolcat'

function gpcb() {
  git push origin `git symbolic-ref -q --short HEAD`
}

function gpcb+() {
  git push origin +`git symbolic-ref -q --short HEAD`
}

function m
{
  command mkdir /tmp/$1 && cd /tmp/$1
}



# trello
alias f="grep Name | sed 's/.*Name: \(.*\) (*/\1/' | sed 's/( [a-z0-9]*)//g'"
alias todo="trello card list -b 54107e6b2ae53cf63c6402ea -l 54107e6b2ae53cf63c6402eb"
alias doing="trello card list -b 54107e6b2ae53cf63c6402ea -l 54107e6b2ae53cf63c6402ec"
alias finished="trello card list -b 54107e6b2ae53cf63c6402ea -l 54107e6b2ae53cf63c6402ed"

function create() {
  name="$@"
  trello card create -b 54107e6b2ae53cf63c6402ea -l 54107e6b2ae53cf63c6402eb -n $name
}

function start() {
  trello card move -c $1 -l 54107e6b2ae53cf63c6402ec
}

function stop() {
  trello card move -c $1 -l 54107e6b2ae53cf63c6402eb
}

function complete() {
  trello card move -c $1 -l 54107e6b2ae53cf63c6402ed
}

function clg() {
  find ~/.gradle/caches -name \*$1\* -exec rm -rfv {} \;
}

export PATH=$PATH:$HOME/.cabal/bin
alias gcal='gcalcli calw --calendar cristian@scopely.com'
alias gcal='gcalcli calw --calendar cristian@scopely.com'
