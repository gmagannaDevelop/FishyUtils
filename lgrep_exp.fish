function lgrep                             
    if test (count $argv) -gt 2
        if test "$argv[1]" = "y"
            while read -a in_from_pipe
                for line in $in_from_pipe
                    for pattern in $argv
                        echo $line | grep $pattern
                    end
                end
            end
        else if test "$argv[1]" = "n"
            while read -a in_from_pipe
                for pattern in $argv
                    for line in $in_from_pipe
                        echo $line | grep -v $pattern
                    end
                end
            end
        else
            echo "lgrep : grep a list of things"
            echo 'Usage : ' 
            echo '$ lgrep y/n pattern(s)'
            echo 'y -> grep -e"$argv"'
            echo 'n -> grep -v -e"$argv"'
        end
    else
        echo "lgrep : grep a list of things"
        echo 'Usage : ' 
        echo '$ lgrep y/n pattern(s)'
        echo 'y -> grep -e"$argv"'
        echo 'n -> grep -v -e"$argv"'
    end
end
