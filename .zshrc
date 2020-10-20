#
# ~/.zshrc
#


# completion
autoload -U compinit
compinit
setopt correct
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000000
SAVEHIST=10000000
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
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export EDITOR=vim

eval "$(rbenv init -)"

alias bt='bin/rails test'
alias be='bundle exec'
alias bi='bundle install'
alias bo='bundle open'
alias bu='bundle update'
alias br='bundle exec rspec'

alias yi='yarn install'

alias ci='curl -I'

alias db='docker-compose build'
alias du='docker-compose up'
alias de='docker-compose exec'
alias dr='docker-compose run --rm'
alias drmpid='docker-compose run --rm rm tmp/pids/server.pid'

alias g='git'
alias gst='git status -s -b'

alias r='rails'
alias o='open'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls -G'

alias mkdir='mkdir -p'

alias e='emacs'
alias v='vim'

alias r='rails'
alias rwbr='RUBYOPT=-w bundle exec rake'

alias ..="cd .."

# ビープ音を鳴らさないようにする
setopt no_beep
# ディレクトリ名だけでcdする
setopt auto_cd

setopt nonomatch

source ~/.zplug/init.zsh

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
# (If the defer tag is given 2 or above, run after compinit command)
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Then, source plugins and add commands to $PATH
zplug load --verbose

#prompt
#autoload -U colors
#colors
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT='[%F{green}%d%f]'
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/syu/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/syu/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/syu/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/syu/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

