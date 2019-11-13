export PATH="/usr/local/opt/llvm/bin:/Users/remi/.local/bin:/usr/local/opt/postgresql@9.6/bin:./scripts/:$HOME/go/bin:$PATH"

export ZSH="/Users/remi/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  vi-mode
  please
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim="nvim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# add fasd
eval "$(fasd --init auto)"

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PYENV_ROOT="$HOME/.pyenv"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/remi/portables/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/remi/portables/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/remi/portables/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/remi/portables/google-cloud-sdk/completion.zsh.inc'; fi
