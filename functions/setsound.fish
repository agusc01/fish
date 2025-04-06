function setsound
    if test (count $argv) -ne 1
        echo "Use: setsound <value between 0 & 100>"
        return 1
    end

    set value $argv[1]

    if test $value -lt 0 -o $value -gt 100
        echo "The value has to be between 0 & 100."
        return 1
    end

    amixer set Master "$value%" | grep -i "mono:" | awk -F"Playback " "{print $2}" | xargs
    refreshdbar
end

# alias s0='amixer set Master 10%- | grep -i "mono:" | awk -F"Playback " "{print $2}" | xargs && refreshdbar'
# alias s1='amixer set Master 10%+ | grep -i "mono:" | awk -F"Playback " "{print $2}" | xargs && refreshdbar'
# alias smute='amixer set Master mute | grep -i "mono:" | awk -F"Playback " "{print $2}" | xargs && refreshdbar'
# # alias sunmute='amixer set Master unmute | grep -i "mono:" | awk -F"Playback " "{print $2}" | xargs && refreshdbar'
# alias sunmute='amixer set Master unmute | grep -i "mono:" | awk -F"Playback " "{print \$2}" | xargs && refreshdbar'
