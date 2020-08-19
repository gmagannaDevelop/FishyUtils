function print
    if test (count $argv) -ge 3
        set olen (string trim (string replace "$argv[1]" "" (wc -l $argv[1])))
        set delta (math $argv[3] - $argv[2] + 1)
        set nlen (math $olen - $argv[2] + 1)
        tail -$nlen $argv[1] | head -$delta
    else
        echo useage :
        echo \$ print filname start end
        echo print a file between lines `start` and `end`
    end
end
