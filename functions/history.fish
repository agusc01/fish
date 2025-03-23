# fhistory | fh
function fh
    set command (history | fzf)

    echo -e "\n$command\n"
    echo -e "eval: $command\n"

    eval $command
end
