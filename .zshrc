export ZSH="$HOME/.oh-my-zsh"
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias ds="find . -name '.DS_Store' -type f -delete"
alias gst="git status"
alias c="code ."
alias undo= "reset —soft HEAD~1"
alias vim="nvim"
alias air='$(go env GOPATH)/bin/air'
alias lazypodman='DOCKER_HOST=unix://$(podman machine inspect --format "{{.ConnectionInfo.PodmanSocket.Path}}") lazydocker'

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

# Eza
alias l="eza -l --icons --git -a"
alias lt="eza --tree --level=2 --long --icons --git"
alias ltree="eza --tree --level=2  --icons --git"


# Set up fzf key bindings and fuzzy completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(zoxide init zsh)"
eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

export PATH=$PATH:$HOME/.spicetify
export PATH="$PATH:$HOME/go/bin"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.local/bin:$PATH"
