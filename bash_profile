set -o vi
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacad
#export TERM=xterm-color
export PATH="/usr/local/sbin:/usr/local/bin:/usr/local/mysql/bin:~/bin:~/git-hooks:$PATH"



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
alias rails='~/.dotfiles/bin/rails_wrapper.sh'
# Editor
export EDITOR='vi'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
