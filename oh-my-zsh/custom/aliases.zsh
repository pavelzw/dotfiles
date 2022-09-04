alias ls=exa
alias la='ls -lah'
alias ccat='pygmentize -g'

bindkey -v

alias m=micromamba

# "..", "...", "...." for easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# git
alias gs="git status"
alias gitstat='git log --shortstat | awk "/^ [0-9]/ { f += \$1; i += \$4; d+= \$6 } END { printf(\"%d files changed, %d insertions(+), %d deletions(-)\n\", f, i, d) }"'
