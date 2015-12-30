ZSHA_BASE=$HOME/.zsh-antigen
source $ZSHA_BASE/antigen/antigen.zsh

antigen-use oh-my-zsh
antigen-bundle git
antigen-bundle tmux
antigen-bundle tmuxinator
antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-bundle scala
antigen-bundle sublime

antigen-bundle zsh-users/zsh-history-substring-search
antigen-bundle $ZSHA_BASE/bundles/git-completion

antigen-theme $ZSHA_BASE/themes randy

# For SSH, starting ssh-agent is annoying
antigen bundle ssh-agent

# Node Plugins
antigen-bundle coffee
antigen-bundle node
antigen-bundle npm

# Python Plugins
antigen-bundle pip
antigen-bundle python

# OS specific plugins
if [[ $CURRENT_OS == 'OS X' ]]; then
    antigen-bundle brew
    antigen-bundle brew-cask
    antigen-bundle gem
    antigen-bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
    # None so far...
    fi

antigen apply

export CDPATH=$CDPATH:$HOME/Sites:$HOME
export PATH=$HOME/.rbenv/bin:$HOME/bin:/opt/homebrew/bin:$HOME/.composer/vendor/bin:/usr/local/mysql/bin:$PATH
export EDITOR=vim

alias sshUi='ssh -o ServerAliveInterval=60 -i ~/SoftBlade/robert.pem ec2-user@ui.softblade.net'
alias sshDb='ssh -o ServerAliveInterval=60 -i ~/SoftBlade/robert.pem ubuntu@db.softblade.net'
alias sshSpark='ssh -o ServerAliveInterval=60 -i ~/SoftBlade/robert.pem ubuntu@spark.softblade.net'
alias sshCustomer='ssh -o ServerAliveInterval=60 -i ~/SoftBlade/robert.pem ec2-user@customer.softblade.net'

if [ -d $HOME/.rbenv ]; then
	eval "$(rbenv init -)"
fi

