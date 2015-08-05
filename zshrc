# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau"
# ZSH_THEME="seans-bureau"
# ZSH_THEME="blinks"

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
COMPLETION_WAITING_DOTS="true"
#
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew brew-cask osx git golang tmux gulp zsh-syntax-highlighting taskwarrior)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="/usr/local/sbin:/usr/local/bin:/usr/local/mysql/bin:$HOME/bin:$HOME/git-hooks:/usr/local/share/npm/bin:$PATH"
export PATH=~/.cabal/bin:$PATH
export PATH=$PATH:/usr/local/apache-maven/apache-maven-3.3.3/bin
export HOMEBREW_GIT_VIA_HTTP=1
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar:$HOME/lib
export VIMCLOJURE_SERVER_JAR="$HOME/lib/vimclojure/server-2.3.0.jar"

export C_INCLUDE_PATH=/usr/local/include 
export LIBRARY_PATH=/usr/local/lib 
export LD_LIBRARY_PATH=/usr/local/lib
export _JAVA_OPTIONS="-Xmx1g"

bindkey -v
export EDITOR='vi'

# ctrl-w removed word backwards
# bindkey '^w' backward-kill-word

# function zle-line-init zle-keymap-select {
#     VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
#     RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
#     zle reset-prompt
# }
#
# function zle-keymap-select zle-line-init {
#     VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
#     RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
#
#     # change cursor shape in iTerm2
#     case $KEYMAP in
#         vicmd)
#           print -n -- "\EPtmux;\E\E]50;CursorShape=0\C-G\E\\"    # block cursor
 #         ;;  
#         viins|main)
  #         print -n -- "\EPtmux;\E\E]50;CursorShape=1\C-G\E\\"  # line cursor
 #           ;;
#     esac
#
#     zle reset-prompt
#     zle -R
# }
#
# function zle-line-finish {
#     print -n -- "\EPtmux;\E\E]50;CursorShape=0\C-G\E\\"  # block cursor
# }

# zle -N zle-line-init
# zle -N zle-line-finish
# zle -N zle-keymap-select
# export KEYTIMEOUT=1


export TERM=xterm-256color-italic

export DISABLE_AUTO_TITLE=true


alias tmux='tmux -2'
alias free="echo 'Seans free alias:-'; top -l 1|grep 'PhysMem'"

# export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh

# alias node='env NODE_NO_READLINE=1 rlwrap -p Green -S "node >>> " node'
# alias nodeunit="node --harmony `which node | xargs dirname`/nodeunit"
alias lg='ledger -f ./accounts.ledger --strict'

setopt interactivecomments

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export GOPATH=$HOME/projects/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin:$HOME/projects/go/bin
