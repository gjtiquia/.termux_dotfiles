echo "loading .bashrc..."

alias so="source ~/.bashrc"

# obsidian stuff
alias obsidian="cd ~/storage/shared/Termux/obsidian-vault"
alias pull="~/.shortcuts/commit_pull_obsidian.sh"
alias push="~/.shortcuts/backup_obsidian.sh"
alias status="~/.shortcuts/status_obsidian.sh"

# dotfiles management
DOTFILES_HOME=$HOME
DOTFILES_GIT_DIR=.termux_dotfiles
alias dotfiles="git --git-dir=$DOTFILES_HOME/$DOTFILES_GIT_DIR/ --work-tree=$DOTFILES_HOME"


