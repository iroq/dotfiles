# start X at login
# if status --is-login
#     if test -z "$DISPLAY" -a "$XDG_VTNR" -eq "1"
#         exec startx
#     end
# end

set -x CHANGELOG_GITHUB_TOKEN (cat $HOME/.keys/github.token)

#set -x TERM "xterm-256color"

# Openfin tried to use kqueue
set -x EVENT_NOKQUEUE 1

# Pruning local git branches that were merged into master alredy
alias gbprune="git branch --merged master | grep -v 'master\$' | xargs git branch -d"

# Alias config
alias config='git --git-dir=$HOME/.dots/ --work-tree=$HOME'

# Alias keys
alias keys='/usr/bin/git --git-dir=$HOME/.keys/ '

# Alias hub as git
alias git=hub

# autostart tmux
#if which tmux > /dev/null; and not set -q TMUX
# exec tmux new-session -A -s main
#end

# add node binaries to PATH
set PATH /usr/local/Cellar/node/7.5.0/bin $PATH

# Alias gnu utils 
alias sort=gsort
alias dd=gdd

# Fix for oh-my-fish default theme
set fish_pager_color_progress cyan

# set bobthefish colors
set -x theme_color_scheme terminal

# Source z script
# set -g Z_SCRIPT_PATH /usr/local/etc/profile.d/z.sh

# Print fortune
fortune -a -s | boxes -d nuke
echo ""
