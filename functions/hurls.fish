# handler urls
function hurls
    set urlregex "(((http|https|gopher|gemini|ftp|ftps|git)://|www\\.)[a-zA-Z0-9.]*[:]?[a-zA-Z0-9./@$&%?$\#=_~-]*)|((magnet:\\?xt=urn:btih:)[a-zA-Z0-9]*)"

    set urls (sed 's/.*│//g' | tr -d '\n' | # First remove linebreaks and mutt sidebars:
        grep -aEo "$urlregex" | # grep only urls as defined above.
        uniq | # Ignore neighboring duplicates.
        sed "s/$\.\|,\|;\|\!\\|\?$$//;
        s/^www./http:\/\/www\./") # xdg-open will not detect url without http

    if test -z "$urls"
        exit 1
    end

    while set -q argv[1]
        switch $argv[1]
            case -h
                printf "Optional arguments:\\n  -c: copy\\n  -o: xdg-open\\n  -h: Show this message\\n"
                return 0
            case -o
                set chosen (echo "$urls" | fzf --height 10 --reverse --border)
                setsid xdg-open "$chosen" >/dev/null 2>&1 &
            case -c
                set link (echo "$urls" | fzf --height 10 --reverse --border | tr -d '\n')
                echo "$link" | xclip -selection clipboard
                notify-send "Link copied" "$link"
            case '*'
                printf "Invalid option: -%s\\n" "$argv[1]"
                return 1
        end
        shift argv
    end
end
