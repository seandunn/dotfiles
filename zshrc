# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"

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
#
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rvm ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="/usr/local/sbin:/usr/local/bin:/usr/local/mysql/bin:$HOME/bin:$HOME/git-hooks:/usr/local/share/npm/bin:$PATH"
export HOMEBREW_GIT_VIA_HTTP=1
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar:$HOME/lib
export VIMCLOJURE_SERVER_JAR="$HOME/lib/vimclojure/server-2.3.0.jar"

bindkey -v
export EDITOR='vi'

export DISABLE_AUTO_TITLE=true


# If we're working behind a proxy configuration then this will pick it up
function prox() {
  export http_proxy=`proxy-config-tool -h`
  export HTTP_PROXY=`proxy-config-tool -h`
  export https_proxy=`proxy-config-tool -s`
  export HTTPS_PROXY=`proxy-config-tool -s`
  export ftp_proxy=`proxy-config-tool -f`

  if [ -z "${http_proxy}" ] ; then
    unset http_proxy
  fi
  if [ -z "${https_proxy}" ] ; then
    unset https_proxy
  fi
  if [ -z "${ftp_proxy}" ] ; then
    unset ftp_proxy
  fi
}

prox
# Tempory measure as proxy-config-tool doesn't seem to be working
# export http_proxy='wwwcache.sanger.ac.uk:3128'
export ALL_PROXY=$http_proxy

alias tmux='tmux -2'
alias free="echo 'Seans free alias:-'; top -l 1|grep 'PhysMem'"
alias rails='dotfiles/bin/rails_wrapper.sh'

setopt interactivecomments

# RVM support...
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
