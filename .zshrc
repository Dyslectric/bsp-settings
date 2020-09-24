# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export EDITOR='vim'
export TERMINAL='alacritty'

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'

alias grep='grep --color=auto'

alias uac='sh ~/.bin/main/000*'

alias sets='setsid-f'
alias c='clear'
alias ra='ranger'
alias t='setsid -f $TERMINAL'
