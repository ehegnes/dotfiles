# Source Antigen
source ~/git/antigen/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh)
antigen bundle git
antigen bundle pip
antigen bundle python
antigen bundle node
antigen bundle npm
antigen bundle rupa/z
antigen bundle aws
antigen bundle catimg
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle vi-mode
antigen bundle olivierverdier/zsh-git-prompt

# Tell antigen that you're done.
antigen apply

# Load the Gentoo theme from app-shells/gentoo-zsh-completions
autoload -U compinit promptinit
compinit
promptinit; prompt gentoo
zstyle ':completion::complete:*' use-cache 1

# Extend PATH
export PATH=~/.local/bin:~/bin:$PATH

# https://github.com/nvbn/thefuck
eval "$(thefuck --alias)"

# aliases
alias s='sudo '
alias e='emerge'
alias l='ls -Fh'
alias ll='l -l'
alias la='ll -a'
alias emerge='TERM=xterm emerge' # changes titlebar on non-standard terms
alias e='emerge'

export RPROMPT='$(vi_mode_prompt_info) $(git_super_status)$?'
export ZSH_THEME_GIT_PROMPT_SUFFIX=") "
