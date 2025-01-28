autoload -U +X compinit && compinit
# ------------------------------------------------------------------------------
# Paths & Variables
# ------------------------------------------------------------------------------
# kubeconfig
export KUBECONFIG="/Users/welz/.kube/config"
# LS
export CLICOLOR=1
export LSCOLORS="exfxcxdxbxegedabagacad"
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
# your default editor
export EDITOR='vim'
# Go
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
# Azure
export AZURE_CONFIG_DIR=$HOME/.azure
# ------------------------------------------------------------------------------
# History
# ------------------------------------------------------------------------------
export HISTFILE=~/.zsh_history
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE
# don't nice background tasks
setopt NO_BG_NICE
setopt NO_HUP
setopt NO_BEEP
# allow functions to have local options
setopt LOCAL_OPTIONS
# allow functions to have local traps
setopt LOCAL_TRAPS
# share history between sessions ???
setopt SHARE_HISTORY
# add timestamps to history
setopt EXTENDED_HISTORY
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
# adds history
setopt APPEND_HISTORY
# adds history incrementally and share it across sessions
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
# don't record dupes in history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt HIST_EXPIRE_DUPS_FIRST
# ------------------------------------------------------------------------------
# Alias
# ------------------------------------------------------------------------------
# edit zshell
alias szs="source ~/.zshrc"
alias ezs="vim ~/.zshrc"
# ls
alias l="ls -lAh"
alias la="ls -A"
alias ll="ls -alG"
# sytem
alias ip="curl icanhazip.com | pbcopy && echo 'Copied Public IP to clipboard'"
alias c="clear"
alias h="history"
alias grep="grep --color=auto"
alias duf="du -sh * | sort -hr"
alias less="less -r"
alias cdr='cd "$(git rev-parse --show-toplevel)"'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ~='cd ~'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias -- -='cd -'
alias md='mkdir -p'
# Go to directories
alias gwd="cd ${HOME}/src/whiteduck"
alias ggh="cd ${HOME}/src/github"
alias ggl="cd ${HOME}/src/gitlab"
# Development aliases
# Terraform
alias tf="terraform"
alias tfi="terraform init"
alias tfp="terraform plan"
alias tff="terraform fmt"
alias tfa="terraform apply"
alias tfaa="terraform apply -auto-approve"
alias tfd="terraform destroy"
alias tfv="terraform validate"
alias tfs="terraform state"
# Azure
export AZURE_CONFIG_DIR=$HOME/.azure
alias azl="az login"
alias aksv='az aks get-versions -o table --location'
alias azvm='az vm list-sizes --output table --location'
alias aks="az aks"
alias akv="az akv"
alias acr="az aacr"
alias ax="azctx"
# Kubernetes
alias k='kubectl'
alias kt='kubetail'
alias kx='kubectx'
alias kn='kubens'
alias ks='kubectl -n kube-system'
alias ke='EDITOR=vim kubectl edit'
# git
alias glg="git log --all --decorate --oneline --graph"
alias glga="glg --all"
alias gp='git push origin HEAD'
alias gpa='git push origin --all'
alias gd='git diff'
alias gc='git commit -s'
alias gca='git commit -s -a'
alias gco='git checkout'
alias gb='git branch -v'
alias ga='git add'
alias gaa='git add -A'
alias gcm='git commit -s -m'
alias gcam='git commit -s -a -m'
alias gs='git status -sb'
alias gpr='gp && git pr'
# ssh
alias bssh="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
alias bscp="scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
alias pubkey="cat ~/.ssh/id_ed25519.pub | pbcopy && echo 'Copied SSH key to clipboard 🔑'"
#alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Copied SSH key to clipboard 🔑'"
# brew
alias b='brew'
alias bb='brew bundle --no-upgrade'
alias bbg='brew bundle --no-upgrade --global'
alias bubu='brew update && brew upgrade && brew cleanup'
# macos
alias afk="open -a /System/Library/CoreServices/ScreenSaverEngine.app"
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"
# Completion
source <(kubectl completion zsh)
source <(flux completion zsh)
source <(gh completion --shell zsh)
