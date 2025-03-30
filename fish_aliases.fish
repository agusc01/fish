alias ..='cd ..'
alias ...='cd ../..'

alias l='ls -alh'
alias lb='ls -alh | bat'
alias lf='ls -alh | fzf'
alias lg='ls -alh | grep'
alias lgd='ls -alh | grep ^d'
alias lgf='ls -alh | grep ^-'
alias lgi='ls -alh | grep -i'

alias rm='rm -vrf'
alias cp='cp -vr'
alias mv='mv -v'
alias mkdir='mkdir -vp'

alias grep='grep --color=auto'

alias g='git'
alias ga='git add'
alias gaA='git add -A'
alias gau='git add -u'
alias gs='git status'
alias gco='git co'
alias gcoc='git coc'
alias gcob='git cob'
alias gss='git status -s'
alias gct='git commit'
alias gctm='git commit -m'
alias gamend='git commit --amend'
alias gl='git ls'
alias gll='git lodag'
alias glll='git hist'
alias gal='git llog'

alias dw='cd ~/Downloads'
alias dk='cd ~/Desktop'
alias dc='cd ~/Documents'
alias img='cd ~/Pictures'

alias a='apps'

alias cfish='cd ~/.config/fish && nv'

alias nvimswap='cd /home/dev/.local/state/nvim/swap'

alias r='ranger'
alias open='thunar'
alias nv='git pull && nvim .'
alias w='curl wttr.in'
alias weather='curl wttr.in'
alias bat='batcat --style=numbers --color=always'
alias man2='tldr'
alias fzf='fzf --reverse --inline-info --height 100%'
alias copyme='xclip -selection clipboard'
alias hurls='cat | grep -Eo $URL_REGEX | tr " " "\n" | fzf'
alias xurl='hurls | copyme'
alias ourl='hurls | xargs surf'
alias wurl='hurls | xargs wget'
alias rf='cd ~/.config/fish/functions/ && ranger'
alias cpwd='pwd | copyme'

alias ggit='lazygit'
alias nn='lazynpm'
alias nr='npm run'

alias wifiset='sudo vim /etc/wpa_supplicant/wpa_supplicant.conf'
alias wifion='sudo wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf'
alias wifioff='sudo wpa_cli disconnect'
alias wifikill='sudo pkill wpa_supplicant'
alias wificheck='ping -c 1 -s 1 www.google.com'
alias wifiinfo='iw dev'
alias wifihelp='cat ~/.config/fish/fish_aliases.fish | grep "alias wifi"'

alias b0='xrandr --output eDP-1 --brightness $(echo "$(xrandr --verbose | grep -i brightness | cut -f2 -d " " | head -n 1) - 0.1" | bc | awk '\''{if ($1 < 0.1) print 0.1; else print $1}'\'') && xrandr --verbose | grep -i bri | xargs'
alias b1='xrandr --output eDP-1 --brightness $(echo "$(xrandr --verbose | grep -i brightness | cut -f2 -d " " | head -n 1) + 0.1" | bc | awk '\''{if ($1 > 1) print 1; else print $1}'\'') && xrandr --verbose | grep -i bri | xargs'

alias s0='amixer set Master 10%- | grep -i "mono:" | awk -F"Playback " "{print $2}"'
alias s1='amixer set Master 10%+ | grep -i "mono:" | awk -F"Playback " "{print $2}"'

alias ufish='source ~/.config/fish/config.fish'

alias cdmenu='cd ~/.config/dmenu/ && nv'
alias cdwm='cd ~/.config/dwm/ && nv'
alias cdbar='cd ~/.config/dbar/ && nv'
alias cdshortcuts='cd ~/.config/dshortcuts/ && nv'
alias cslock='cd ~/.config/slock/ && nv'
alias cst='cd ~/.config/st/ && nv'
alias csurf='cd ~/.config/surf/ && nv'

alias udmenu='cd ~/.config/dmenu/ && sudo touch config.h && sudo rm config.h && sudo make clean install && sudo dos2unix /usr/local/bin/dmenu_run && sudo dos2unix /usr/local/bin/dmenu_path && sudo dos2unix /usr/local/bin/dmenu_run_desktop && sudo dos2unix /usr/local/bin/dmenu_path_desktop'
alias udwm='cd ~/.config/dwm/ && sudo touch config.h && sudo rm config.h && sudo make clean install'
alias udbar='cd ~/.config/dbar/ && sudo touch config.h && sudo rm config.h && sudo make clean install'
alias udshortcuts='cd ~/.config/dshortcuts/ && sudo touch config.h && sudo rm config.h && sudo make clean install'
alias uslock='cd ~/.config/slock/ && sudo touch config.h && sudo rm config.h && sudo make clean install'
alias ust='cd ~/.config/st/ && sudo touch config.h && sudo rm config.h && sudo make clean install'
alias usurf='cd ~/.config/surf/ && sudo touch config.h && sudo rm config.h && sudo make clean install'
