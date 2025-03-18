alias shutdown='poweroff now'

alias ..='cd ..'
alias ...='cd ../..'

alias l='ls -altrh'
alias ll='ls -altrh | less'
alias lg='ls -altrh | grep'
alias lgi='ls -altrh | grep -i'

alias rm='rm -vrf'
alias cp='cp -vr'
alias mv='mv -v'
alias mkdir='mkdir -vp'

alias grep='grep --color=auto'

alias g='git'
alias ga='git add'
alias gs='git status'
alias gss='git status -s'
alias gct='git commit'
alias gctm='git commit -m'
alias gamend='git commit --amend'
alias gl='git lodag'

alias dw='cd ~/Downloads'
alias dk='cd ~/Desktop'
alias dc='cd ~/Documents'
alias img='cd ~/Pictures'

alias r='ranger'
alias nv='git pull && nvim .'
alias w='curl wttr.in'
alias weather='curl wttr.in'

alias nr='npm run'

alias wifiset='sudo vim /etc/wpa_supplicant/wpa_supplicant.conf'
alias wifion='sudo wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf'
alias wifioff='sudo wpa_cli disconnect'
alias wifikill='sudo killall wpa_supplicant'
alias wificheck='ping -c 1 -s 1 www.google.com'
alias wifiinfo='iw dev'
alias wifihelp='cat ~/.config/fish/fish_aliases.fish | grep "alias wifi"'

alias b0='xrandr --output eDP-1 --brightness $(echo "$(xrandr --verbose | grep -i brightness | cut -f2 -d " " | head -n 1) - 0.1" | bc | awk '\''{if ($1 < 0.1) print 0.1; else print $1}'\'') && xrandr --verbose | grep -i bri | xargs'
alias b1='xrandr --output eDP-1 --brightness $(echo "$(xrandr --verbose | grep -i brightness | cut -f2 -d " " | head -n 1) + 0.1" | bc | awk '\''{if ($1 > 1) print 1; else print $1}'\'') && xrandr --verbose | grep -i bri | xargs'

alias s0='amixer set Master 10%- | grep -i "mono:" | awk -F"Playback " "{print $2}"'
alias s1='amixer set Master 10%+ | grep -i "mono:" | awk -F"Playback " "{print $2}"'

alias ufish='source "$HOME/.config/fish/config.fish" && source "$HOME/.config/fish/fish_aliases.fish"'

alias udmenu='cd $HOME/.config/dmenu && sudo rm config.h && sudo make clean install && sudo dos2unix /usr/local/bin/dmenu_run && sudo dos2unix /usr/local/bin/dmenu_path'
alias udwm='cd $HOME/.config/dwm && sudo rm config.h && sudo make clean install'
alias udbar='cd $HOME/.config/dbar && sudo rm config.h && sudo make clean install'
alias udshortcuts='cd $HOME/.config/dshortcuts && sudo rm config.h && sudo make clean install'
alias uslock='cd $HOME/.config/slock && sudo rm config.h && sudo make clean install'
alias ust='cd $HOME/.config/st && sudo rm config.h && sudo make clean install'
