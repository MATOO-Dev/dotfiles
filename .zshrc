# Environment variables
export EDITOR=nvim

# Aliases
alias ls='ls --color'
alias nv=nvim
alias open=xdg-open

# Case-insensitive autocompletion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# something about ls colors, i forgor
zstyle ':completion:*' list-colors "''${(s.:.)LS_COLORS}"

# Initialize zoxide
eval "$(zoxide init zsh --cmd j)"
