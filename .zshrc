if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias v='nvim'
alias r='ranger'
alias z='zathura'
alias python='python3'

run(){
#	echo [DEBUG MODE] compiling $1.cpp with c++17.
	g++ -std=c++17 -O2 -Wall -Wno-unused-variable $1.cpp -o $1
#	echo Input:
	./$1
}

source ~/powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
