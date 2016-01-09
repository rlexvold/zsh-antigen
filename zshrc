ZSHA_BASE=$HOME/.dot-files/zsh-antigen
source $ZSHA_BASE/antigen/antigen.zsh

antigen-use oh-my-zsh
antigen-bundle git
# antigen-bundle tmux
# antigen-bundle tmuxinator
antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-bundle scala
antigen-bundle sbt
antigen-bundle sudo
# antigen-bundle yum
antigen-bundle gradle
antigen-bundle mvn
# antigen-bundle sublime
antigen-bundle colored-man-pages
# antigen-bundle common-aliases

antigen-bundle zsh-users/zsh-history-substring-search
antigen-bundle $ZSHA_BASE/bundles/git-completion

antigen-theme $ZSHA_BASE/themes randy

# Node Plugins
# antigen-bundle coffee
# antigen-bundle node
# antigen-bundle npm

# Python Plugins
antigen-bundle pip
antigen-bundle python

# OS specific plugins
if [[ $CURRENT_OS == 'OS X' ]]; then
    antigen-bundle brew
#   antigen-bundle brew-cask
#   antigen-bundle gem
   antigen-bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
    # None so far...
    fi

antigen apply

export EDITOR=vim
alias sshUi='~/.dot-files/softSsh ui'
alias sshRest='~/.dot-files/softSsh rest'
alias sshDevDb='~/.dot-files/softSsh dev-db'
alias sshProdDb='~/.dot-files/softSsh prod-db'
alias sshSpark='~/.dot-files/softSsh spark'
alias sshCustomer='~/.dot-files/softSsh customer'
alias sshJenkins='~/.dot-files/softSsh jenkins'
alias sshProcessor='~/.dot-files/softSsh processor'

alias scpUi='~/.dot-files/softCp ui $1 $2'
alias scpRest='~/.dot-files/softScp rest $1 $2'
alias scpDevDb='~/.dot-files/softScp dev-db $1 $2'
alias scpProdDb='~/.dot-files/softScp prod-db $1 $2'
alias scpSpark='~/.dot-files/softScp spark $1 $2'
alias scpCustomer='~/.dot-files/softScp customer $1 $2'
alias scpJenkins='~/.dot-files/softScp jenkins $1 $2'
alias scpProcessor='~/.dot-files/softScp processor $1 $2'
