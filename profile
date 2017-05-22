# eval "$(rbenv init -)"

export JAVA_OPTS="-d32" # make java startup faster

function gitclean() {
  git checkout .
  git clean -df
}

#alias "gvim"="rvm use system do gvim"
alias gvim='mvim'

export EDITOR='rvm use system do gvim'

alias push='git p && bundle install && rake db:migrate && rake && git push'

alias updatedb='sudo /usr/libexec/locate.updatedb'

repl() { perl -pi -w -e "s/$1/$2/g;" * }
replr() { perl -p -i -e "s/$1/$2/g" `grep -ril $1 *` }

source ~/.bashrc # has machine specific commands in it, for historical reasons :-)

alias ls="ls -GF"
export LSCOLORS=Exfxcxdxbxegedabagacad

# HAX for Sierra
defaults write .GlobalPreferences com.apple.mouse.scaling -1
ssh-add -K

# python virtual env
source "/usr/local/bin/virtualenvwrapper.sh"
# export WORKON_HOME="~/dev/precinct-data"

export PATH=$PATH:/usr/local/opt/go/libexec/bin
