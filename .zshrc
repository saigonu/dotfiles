
export ZSH="$HOME/.oh-my-zsh"
export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias ds="find . -name '.DS_Store' -type f -delete"
alias gst="git status"
alias c="code ."
alias undo= "reset —soft HEAD~1"
alias vim="nvim"

gacp() {
  find . -name '.DS_Store' -type f -delete
  git add .
  if [ -n "$1" ]
    then
      git commit -m "$1"
    else
      git commit -m "Update work"
    fi
  git push
}

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && \. "/usr/local/opt/nvm/etc/bash_completion"

# Created by `pipx` on 2024-01-04 19:32:33
export PATH="$PATH:/Users/sai/.local/bin"

#if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#  tmux attach-session -t default || tmux new-session -s default
#fi

# Set up fzf key bindings and fuzzy completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(zoxide init zsh)"

eval "$(starship init zsh)"

export PATH=$PATH:$HOME/.spicetify

export PATH=$PATH:/Users/sai/.spicetify
