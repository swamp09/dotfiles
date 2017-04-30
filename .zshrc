#
# ~/.zshrc
#

# prompt
#autoload -U colors
#colors
PROMPT='[%@%F{blue}%U%m%u%f]# '
RPROMPT='[%F{green}%d%f]'

# completion
autoload -U compinit
compinit
setopt correct
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history
setopt auto_pushd
setopt pushd_ignore_dups

function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias be='bundle exec'
alias bi='bundle install'
alias bo='bundle open'
alias bu='bundle update'

alias g='git'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

bundle exec rspec --color --format d

# ディレクトリ名だけでcdする
setopt auto_cd
