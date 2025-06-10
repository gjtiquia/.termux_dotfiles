echo "loading .bashrc..."

alias so="source ~/.bashrc"
alias vim="nvim"
alias lg="lazygit"
alias ff="fastfetch"
alias q="exit"
alias c="clear"
alias cf="c && ff"

# obsidian stuff
alias obsidian="cd ~/storage/shared/Termux/obsidian-vault"
alias pull="~/.shortcuts/commit_pull_obsidian.sh"
alias push="~/.shortcuts/backup_obsidian.sh"
alias status="~/.shortcuts/status_obsidian.sh"
alias pl=pull
alias ph=push

# dotfiles management
DOTFILES_HOME=$HOME
DOTFILES_GIT_DIR=.termux_dotfiles
alias dotfiles="git --git-dir=$DOTFILES_HOME/$DOTFILES_GIT_DIR/ --work-tree=$DOTFILES_HOME"

# setup fzf - keybindings
eval "$(fzf --bash)"

# setup yazi - y command
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}

# setup zoxide - z command
eval "$(zoxide init bash)"


