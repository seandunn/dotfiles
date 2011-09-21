set -o vi
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacad
#export TERM=xterm-color
export PATH="/usr/local/sbin:/usr/local/bin:/usr/local/mysql/bin:~/bin:~/git-hooks:$PATH"

# Vimpager
# export PAGER=~/bin/vimpager
# alias less=$PAGER
# alias zless=$PAGER


# RSense...
# export RSENSE_HOME="/Users/sd9/opt/rsense-0.3"

# Maxime's Rake and Capistrano completion code...
source ~/.dotfiles/bin/cap-complete.bash
source ~/.dotfiles/bin/rake-complete.bash

# Z.sh fuzzy directory name completion
# source ~/z.sh

# # If we're working behind a proxy configuration then this will pick it up
# function prox() {
#   export http_proxy=`proxy-config -h`
#   export HTTP_PROXY=`proxy-config -h`
#   export https_proxy=`proxy-config -s`
#   export ftp_proxy=`proxy-config -f`
# 
#   if [ -z "${http_proxy}" ] ; then
#     unset http_proxy
#   fi
#   if [ -z "${https_proxy}" ] ; then
#     unset https_proxy
#   fi
#   if [ -z "${ftp_proxy}" ] ; then
#     unset ftp_proxy
#   fi
# }

# prox
# Tempory measure as proxy-config doesn't seem to be working
# export http_proxy='wwwcache.sanger.ac.uk:3128'
# export ALL_PROXY=$http_proxy

# Git completion and state
source ~/.dotfiles/bin/git-completion.bash
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
alias dc='./script/dbconsole'
alias ql='qlmanage -p "$@" >& /dev/null'
alias rails='~/.dotfiles/bin/rails_wrapper.sh'
# Editor
# export EDITOR='mate -w'
export EDITOR='vi'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
