ZSHA_BASE=$HOME/.zsh-antigen
source $ZSHA_BASE/antigen/antigen.zsh

antigen-use oh-my-zsh
antigen-bundle git
antigen bundle git
antigen bundle tmuxinator
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle rupa/z

# For SSH, starting ssh-agent is annoying
antigen bundle ssh-agent

# Node Plugins
antigen bundle coffee
antigen bundle node
antigen bundle npm

# Python Plugins
antigen bundle pip
antigen bundle python
antigen bundle virtualenv

# OS specific plugins
if [[ $CURRENT_OS == 'OS X' ]]; then
    antigen bundle brew
    antigen bundle brew-cask
    antigen bundle gem
    antigen bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
    # None so far...
    fi

antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-bundle zsh-users/zsh-history-substring-search
antigen-bundle $ZSHA_BASE/bundles/git-completion

antigen-theme $ZSHA_BASE/themes mgdm

antigen-apply

export CDPATH=$CDPATH:$HOME/Sites:$HOME
export PATH=$HOME/.rbenv/bin:$HOME/bin:/opt/homebrew/bin:$HOME/.composer/vendor/bin:/usr/local/mysql/bin:$PATH

if [ -d $HOME/.rbenv ]; then
	eval "$(rbenv init -)"
fi

