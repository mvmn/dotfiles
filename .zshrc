setItermTabTitle() {
  DISABLE_AUTO_TITLE="true"
  echo -e "\033];$1\007"
}

compctl -g '~/.teamocil/*(:t:r)' teamocil
compctl -g '~/.teamocil/*(:t:r)' itermocil

alias inputp='osascript -e "return text returned of (display dialog \"Input text\" default answer \"\" with hidden answer)"'
alias inputt='osascript -e "return text returned of (display dialog \"Input text\" default answer \"\")"'
alias inputmt='osascript -e "return text returned of (display dialog \"Input text\" default answer \"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\")"'

export JAVA_HOME=$(/usr/libexec/java_home -v '1.8*')
export PATH=$JAVA_HOME/bin:$PATH
