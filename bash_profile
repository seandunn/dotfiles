set -o vi
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacad
#export TERM=xterm-color
export PATH="/usr/local/sbin:/usr/local/bin:/usr/local/mysql/bin:~/bin:~/git-hooks:$PATH"

# Vimpager
# export PAGER=~/bin/vimpager
# alias less=$PAGER
# alias zless=$PAGER


export HOMEBREW_GIT_VIA_HTTP=1

# RSense...
export RSENSE_HOME="/Users/sd9/opt/rsense-0.3"

# Oracle setup
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK"
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home"
export DYLD_LIBRARY_PATH="/opt/oracle/instantclient"
export SQLPATH="/opt/oracle/instantclient"
export TNS_ADMIN="/opt/oracle/instantclient/Config"
export NLS_LANG="AMERICAN_AMERICA.UTF8"
export PATH=$PATH:$DYLD_LIBRARY_PATH

# Maxime's Rake and Capistrano completion code...
source ~/.cap-complete.bash
source ~/.rake-complete.bash

# Z.sh fuzzy directory name completion
# source ~/z.sh

# If we're working behind a proxy configuration then this will pick it up
function prox() {
  export http_proxy=`proxy-config -h`
  export HTTP_PROXY=`proxy-config -h`
  export https_proxy=`proxy-config -s`
  export ftp_proxy=`proxy-config -f`

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
# Tempory measure as proxy-config doesn't seem to be working
# export http_proxy='wwwcache.sanger.ac.uk:3128'
export ALL_PROXY=$http_proxy

# Git completion and state
source ~/.git-completion.bash
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

#PS1='\n\n\e[1;44m\]\w\e[\033[1;33m$(__git_ps1 " (%s)")\e[m\n\$ '
PS1='\n\n\e[38;44m\]\w\e[\033[1;33m$(__git_ps1 " (%s)")\e[m\n\$ '


# ls
alias ls='ls -G'
alias ll='ls -hl'
alias la='ls -hla'
# Misc
alias less='less -r'
alias tc='top -o cpu'
alias spec='spec --format nested --color'
alias info='info --vi-keys'
alias pstree='pstree -g 2'
# Git
alias gs='git status'
alias gc='git commit'
alias ga='git add'
alias gb='git branch --color'
#alias gch='git checkout'
alias gd='git diff --color'
alias gl='git log --color --graph'
# Rails
alias sv='./script/server'
alias sc='./script/console'
alias dc='./script/dbconsole'
alias ql='qlmanage -p "$@" >& /dev/null'
alias rails='rails_wrapper.sh'
# Editor
# export EDITOR='mate -w'
export EDITOR='vi'
if [[ -s /Users/sd9/.rvm/scripts/rvm ]] ; then source /Users/sd9/.rvm/scripts/rvm ; fi
