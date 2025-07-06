# gjtiquia termux .bashrc

# obsidian stuff
alias obsidian="cd ~/storage/shared/Termux/obsidian-vault"
alias pull="~/.shortcuts/commit_pull_obsidian.sh"
alias push="~/.shortcuts/backup_obsidian.sh"
alias status="~/.shortcuts/status_obsidian.sh"
alias pl=pull
alias ph=push

# ssh stuff
alias sshd="~/.shortcuts/sshd.sh" # a wrapper around sshd showing more useful info (username and local ip)

# proot stuff
alias alpine="proot-distro login alpine"
alias ubuntu="proot-distro login ubuntu -- su - gjtiquia"

####################

# aliases
alias so="source ~/.bashrc"
alias q="exit"
alias c="clear"

# aliases - tools
alias ff="fastfetch"
alias cf="c & ff"
alias v="vim" # not neovim, want to keep termux minimal, and neovim is a pain to setup in termux
alias lg="lazygit"

# aliases - tmux
alias tm="tmux new -s"       # create tmux with session name
alias tmm="tmux new -s misc" # create tmux with session name "misc"
alias tma="tmux a"           # [a]ttatch tmux most recent session
alias tmat="tmux a -t"       # [a]ttatch tmux to [t]arget session name
alias tml="tmux ls"          # [l]ist all sessions
alias tmls="tml"
alias tmk="tmux kill-server" # [k]ill all sessions
alias tms="tmux-sessionizer" # /usr/bin/tmux-sessionizer -> /opt/tmux-sessionizer/tmux-sessionizer -> <the repo where the script is located>/tmux-sessionizer

# aliases - git
alias g="git"
alias gs="git status"
alias gs="git status"
alias ga="git add"
alias gd="git diff"
alias gds="git diff --staged"
alias gc="git commit -m"
alias gf="git fetch"
alias gph="git push"
alias gpl="git pull"

# dotfiles management
DOTFILES_HOME=$HOME
DOTFILES_GIT_DIR=.termux_dotfiles
alias dotfiles="git --git-dir=$DOTFILES_HOME/$DOTFILES_GIT_DIR/ --work-tree=$DOTFILES_HOME"
alias ds="dotfiles status"
alias da="dotfiles add"
alias dd="dotfiles diff"
alias dds="dotfiles diff --staged"
alias dc="dotfiles commit -m"
alias df="dotfiles fetch"
alias dph="dotfiles push"
alias dpl="dotfiles pull"

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

