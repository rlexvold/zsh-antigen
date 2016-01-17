ZSHA_BASE=$HOME/.dot-files/zsh-antigen
source $ZSHA_BASE/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle autojump
antigen bundle command-not-found 
antigen bundle git
antigen bundle github
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle sudo
antigen bundle gradle
antigen bundle mvn
antigen bundle colored-man-pages
antigen bundle common-aliases

antigen bundle zsh-users/zsh-history-substring-search
antigen bundle $ZSHA_BASE/bundles/git-completion
antigen bundle tarruda/zsh-autosuggestions
zle-line-init() {
        zle autosuggest-start
}
zle -N zle-line-init

antigen theme $ZSHA_BASE/themes randy

# OS specific plugins
if [[ $CURRENT_OS == 'OS X' ]]; then
   antigen bundle brew
   antigen bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
    # None so far...
    fi

antigen apply
export AUTOSUGGESTION_ACCEPT_RIGHT_ARROW=1
export PATH="/usr/local/sbin:$PATH:/Users/rlexvold/dse/bin"
export EDITOR=vim
alias sshUi='~/.dot-files/softSsh ui'
alias sshRest='~/.dot-files/softSsh rest'
alias sshDevDb='~/.dot-files/softSsh dev-db'
alias sshProdDb='~/.dot-files/softSsh prod-db'
alias sshSpark='~/.dot-files/softSsh spark'
alias sshCustomer='~/.dot-files/softSsh customer'
alias sshJenkins='~/.dot-files/softSsh jenkins'
alias sshProcessor='~/.dot-files/softSsh processor'

alias scpUi='~/.dot-files/softScp ui $1 $2'
alias scpRest='~/.dot-files/softScp rest $1 $2'
alias scpDevDb='~/.dot-files/softScp dev-db $1 $2'
alias scpProdDb='~/.dot-files/softScp prod-db $1 $2'
alias scpSpark='~/.dot-files/softScp spark $1 $2'
alias scpCustomer='~/.dot-files/softScp customer $1 $2'
alias scpJenkins='~/.dot-files/softScp jenkins $1 $2'
alias scpProcessor='~/.dot-files/softScp processor $1 $2'

alias cql='/Users/rlexvold/dse/bin/cqlsh'
alias releaseIt='git checkout release;git merge --no-ff master;git push --set-upstream origin release;git checkout master'
