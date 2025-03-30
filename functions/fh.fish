# fzf history
function fh
    set command (history | grep -v '^fh' | sed '/^$/d' | awk '!seen[$0]++' | fzf)

    if test -n "$command"
        echo -e "\n$command\n"
        echo -e "eval: $command\n"
        eval $command
    else
        echo "Aborted !"
    end

end
