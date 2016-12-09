# start X at login
if status --is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" -eq "1"
        exec startx
    end
end
source ~/.asdf/asdf.fish
set -x CHANGELOG_GITHUB_TOKEN "e6ae2965e587666c1cc4d61b071da21ac426a24d"
set -x TERM "xterm-256color"

# Prune local git branches that were merged into master alredy
alias gbprune="git branch --merged master | grep -v 'master\$' | xargs git branch -d"
