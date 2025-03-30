# fzf history copyme
function xh
    set precommands (history | grep -v '^xh' | grep -v 'copyme' | sed '/^$/d' | awk '!seen[$0]++')
    # TODO: allow wget
    set commands (printf "%s\n" $precommands | grep -v 'wget' | fzf)

    if test -n "$commands"
        eval $commands | copyme
        echo -e "\n$commands\n"
        echo -e "\nThe result has been copy to the clipboard\n"
    else
        echo "Aborted !"
    end
end
