function refreshdbar
    set pid (pgrep dbar)
    if test -n "$pid"
        kill -9 $pid
        dbar &
        disown
    end
end
