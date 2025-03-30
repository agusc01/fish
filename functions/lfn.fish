# fzf ls nvim
function lfn
    set file (ls -ah | grep -v "^d" | grep -v "^l" | awk "{print $9}" | fzf --preview "bat {}" --header "SELECT A FILE" --height 80%)

    if test -n "$file"
        echo -e "\nnvim $file\n"
        echo -e "eval:nvim $file\n"
        eval "nvim $file"
    else
        echo "aborted !"
    end
end
