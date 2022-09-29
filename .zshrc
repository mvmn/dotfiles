# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="evan"
#ZSH_THEME="lukerandall"
#ZSH_THEME="mvmn_java_df"
ZSH_THEME="powerlevel10k/powerlevel10k"

#DISABLE_AUTO_TITLE="true"

setItermTabTitle() {
  DISABLE_AUTO_TITLE="true"
  echo -n -e "\033];$1\007"
}

function setItermTabColor {
  echo -n -e "\033]6;1;bg;red;brightness;$1\a"
  echo -n -e "\033]6;1;bg;green;brightness;$2\a"
  echo -n -e "\033]6;1;bg;blue;brightness;$3\a"
}

setItermTabColor $(jot -r 1 0 255) $(jot -r 1 0 255) $(jot -r 1 0 255)

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(ant battery gem git git-extras git-flow git-flow-avh git-hubflow git-remote-branch gitfast github gnu-utils gradle grails history history-substring-search jira lol macports mvn mysql-macports osx per-directory-history perl python rsync ruby scala screen ssh-agent svn terminalapp textmate themes tmux tmuxinator urltools vagrant wakeonlan web-search)

PATH=~/homebrew/bin:$PATH
plugins=(ant gem git mvn lol jira osx perl python macports ruby scala svn textmate themes tmux vagrant colored-man-pages)

source $ZSH/oh-my-zsh.sh
source ~/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

SVN_EDITOR="mate -w"
export SVN_EDITOR
alias svnaddall="svn status . | grep \"?\" | sed \"s/\?[ ]*//\" | xargs svn add"

alias inputp='osascript -e "return text returned of (display dialog \"Input text\" default answer \"\" with hidden answer)"'
alias inputt='osascript -e "return text returned of (display dialog \"Input text\" default answer \"\")"'
alias inputmt='osascript -e "return text returned of (display dialog \"Input text\" default answer \"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\")"'

alias https='http --default-scheme="https"'

alias scanjenv="find $HOME/.sdkman/candidates/java -type d -maxdepth 1 -mindepth 1 -exec jenv add '{}' \;"

### Run services
alias runredis="redis-server $HOME/homebrew/etc/redis.conf"
alias runmongo="mongod --config $HOME/homebrew/etc/mongod.conf"

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA8_HOME=$(/usr/libexec/java_home -v '1.8*')
export JAVA11_HOME=$(/usr/libexec/java_home -v '11.*')
export JAVA14_HOME=$(/usr/libexec/java_home -v '14.*')
export JAVA_HOME=$JAVA8_HOME

#export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$HOME/homebrew/Cellar/jenv/0.5.4/bin:$PATH"
#eval "$(jenv init -)"

alias j8='export JAVA_HOME=$JAVA8_HOME && export PATH=$JAVA_HOME/bin:$PATH'
alias j11='export JAVA_HOME=$JAVA11_HOME && export PATH=$JAVA_HOME/bin:$PATH'
alias j14='export JAVA_HOME=$JAVA14_HOME && export PATH=$JAVA_HOME/bin:$PATH'

compctl -g '~/.teamocil/*(:t:r)' teamocil
compctl -g '~/.teamocil/*(:t:r)' itermocil

export ANT_HOME=~/_my/_prog/_dev/apache-ant-1.9.2
export ANT_OPTS="-Xmx1024m -XX:MaxPermSize=512m"

export MAVEN_HOME=~/_my/_prog/_dev/apache-maven-3.6.3
export KOTLIN_HOME=~/_my/_prog/_dev/kotlin-compiler-1.3.72
export GRADLE_HOME=~/_my/_prog/_dev/gradle-7.4

# Path
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin
#export PATH=$PATH:$JAVA_HOME/bin # Commented out - let JEnv/SDKMan handle this
export PATH=$PATH:~/_my/_prog/_dev/groovy-3.0.5/bin
export PATH=$PATH:$MAVEN_HOME/bin
export PATH=$PATH:$KOTLIN_HOME/bin
export PATH=$PATH:$GRADLE_HOME/bin
export PATH=$PATH:$ANT_HOME/bin:~/_my/_prog/_dev/gradle-4.0.2/bin
export PATH=$PATH:~/Library/Python/2.7/bin
export PATH=$PATH:~/homebrew/bin:~/scripts
export PATH=$PATH:~/phantomjs-2.1.1-macosx/bin
export PATH=$PATH:~/_my/_prog/_dev/awscli2
export PATH=~/_my/_prog/_dev:$PATH
export PATH="$PATH:/Applications/VMware Fusion.app/Contents/Public/"

export NODE_PATH=~/homebrew/lib/node_modules
export PHANTOMJS_BIN=~/phantomjs-2.1.1-macosx/bin/phantomjs
export GOPATH=~/_my/_dev/_workspaces/go

export PATH="$PATH:/Applications/TextMate.app/Contents/MacOS/"
export EDITOR="mate -w"

# ZooKeeper
export ZOOKEEPER_HOME=~/_my/_prog/_dev/apache-zookeeper-3.6.0-bin
export PATH="$PATH:$ZOOKEEPER_HOME/bin"

#### https://gist.github.com/lounagen/bdcf3e59122e80bae6da114352d0280c
BASE64_DECODER_PARAM="-d" # option -d for Linux base64 tool
echo AAAA | base64 -d > /dev/null 2>&1 || BASE64_DECODER_PARAM="-D" # option -D on MacOS

decode_base64_url() {
  local len=$((${#1} % 4))
  local result="$1"
  if [ $len -eq 2 ]; then result="$1"'=='
  elif [ $len -eq 3 ]; then result="$1"'='
  fi
  echo "$result" | tr '_-' '/+' | base64 $BASE64_DECODER_PARAM
}

decode_jose(){
   decode_base64_url $(echo -n $2 | cut -d "." -f $1) | jq .
}

decode_jwt_part(){
   decode_jose $1 $2 | jq 'if .iat then (.iatStr = (.iat|todate)) else . end | if .exp then (.expStr = (.exp|todate)) else . end | if .nbf then (.nbfStr = (.nbf|todate)) else . end'
}

decode_jwt(){
   decode_jwt_part 1 $1
   decode_jwt_part 2 $1
}

####

# --httptoolkit--
# This section will be reset each time a HTTP Toolkit terminal is opened
if [ -n "$HTTP_TOOLKIT_ACTIVE" ]; then
    # When HTTP Toolkit is active, we inject various overrides into PATH
    export PATH="/private/var/folders/xn/xpgrnyr958z7zs1h58c7p1dm0000gq/T/AppTranslocation/68A805ED-5B2E-4FF7-B78F-2A2C0B55C7C8/d/HTTP Toolkit.app/Contents/Resources/app/httptoolkit-server/overrides/path:$PATH"

    if command -v winpty >/dev/null 2>&1; then
        # Work around for winpty's hijacking of certain commands
        alias php=php
        alias node=node
    fi
fi
# --httptoolkit-end--

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mvmn/_my/_prog/_dev/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mvmn/_my/_prog/_dev/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mvmn/_my/_prog/_dev/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mvmn/_my/_prog/_dev/google-cloud-sdk/completion.zsh.inc'; fi


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/homebrew/sbin:$PATH"

### JEnv init
eval "$(jenv init -)"

