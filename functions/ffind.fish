# fzf find
function ffind
    if test -n "$argv"
        find / -name "$argv" 2>/dev/null
    else
        echo "Aborted ! You do not give me any argument"
    end
end
