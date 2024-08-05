#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export HISTSIZE=2000
export HISTFILESIZE=2000
export HISTCONTROL=ignoredups

alias vim='nvim'
alias mov-cli='.local/bin/mov-cli'

fastfetch -l "Manjaro" --localip-show-ipv4 false

#eval "$(oh-my-posh init bash)"
#eval "$(oh-my-posh init bash --config /root/.cache/oh-my-posh/themes/clean-detailed.omp.json)"
eval "$(oh-my-posh init bash --config /home/chairiel/.poshthemes/montys.omp.json)"

# ---- Zoxide (better cd) ----
eval "$(zoxide init bash)"
#alias z="zoxide"

# ---- Eza (better ls) -----
#alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
#alias ls="eza -1lFahH --color=always --icons --hyperlink"
alias ls="eza --oneline --long --classify=always --color=always --icons --hyperlink --all --header --links"

# thefuck alias
eval $(thefuck --alias)
eval $(thefuck --alias fk)

# ---- Bat (better cat)
alias cat='bat --paging=never'

# ---- FZF -----

# Set up fzf key bindings and fuzzy completion
#eval "$(fzf --bash)"
#source <(fzf --zsh)
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

# ---- Atuin ----
. $HOME/.atuin/bin/env
source $HOME/.atuin/bin/env
[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash --disable-up-arrow)"
atuin login
