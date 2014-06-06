# Shell
alias lsd="ls -Gl | grep "^d""
alias lsort='echo "========== Newest ==========" && ls -At1 && echo "========== Oldest =========="'
alias reload=". ~/.zshrc"
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# Dirs
alias o="open ."
alias p="cd $PROJECTS"

# Management
alias dots="$EDITOR $DOTS"

# Default commands with specific switches
alias grep="grep --color=auto"

# Update scripts
alias systemupdate="sudo softwareupdate -i -a; brew update; brew upgrade"
alias shellupdate="cd $DOTS && git pull && git pullall && cd - && $DOTS/install.sh && reload && clear"

# Utilities
alias cb="tr -d '\n' | pbcopy" # trim new lines and copy to clipboard
alias imgsz='sips -g pixelWidth -g pixelHeight'
alias pubkey="cat ~/.ssh/id_rsa.pub | cb" # copy public key to clipboard
alias cpwd='pwd | cb' # copy working directory path to clipboard
alias cl="fc -e - | pbcopy" # copy output of last command to clipboard

# todo.sh
alias t="todo.sh"

# vim
alias v="vim"

# tmux
alias resume="tmux a"

# git
alias gaa="git add -A"
alias gam="git commit --amend"
alias gap="git add -p"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias gs="git status -s"

# IP addresses
alias flushdns="dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ip0="ipconfig getifaddr en0"
alias ip1="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Canonical hex dump; some systems have this symlinked
type hd > /dev/null || alias hd="hexdump -C"

# OS X has no `md5sum`, so use `md5` as a fallback
type md5sum > /dev/null || alias md5sum="md5"

# Trim new lines and copy to clipboard
alias cb="tr -d '\n' | pbcopy"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# File size
alias fs="stat -f \"%z bytes\""

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    alias "$method"="lwp-request -m '$method'"
done

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 10'"
alias hax="growlnotify -a 'Activity Monitor' 'System error' -m 'WTF R U DOIN'"

# Mac Specific:

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"
# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

# PlistBuddy alias, because sometimes `defaults` just doesn’t cut it
alias plistbuddy="/usr/libexec/PlistBuddy"
