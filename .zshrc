# oh-my-zsh
export ZSH="/Users/bilal/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# conda
__conda_setup="$('/Users/bilal/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/bilal/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/bilal/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/bilal/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# llvm
export PATH="/usr/local/opt/llvm/bin:$PATH"

# gcloud
if [ -f '/Users/bilal/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/bilal/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/bilal/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/bilal/google-cloud-sdk/completion.zsh.inc'; fi

# starship
eval "$(starship init zsh)"

alias v='nvim'
alias l='exa'

# git signed commits
export GPG_TTY=$(tty)

#Docker/K8s
alias d='docker'
alias k='kubectl'
complete -F __start_kubectl k
source <(kubectl completion zsh)
