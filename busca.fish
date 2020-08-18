function busca
    if test (count $argv) -ge 3
        if test "$argv[2]" = "y"
            mdfind $argv[1] | grep -e$argv[3..(count $argv)] | while read -a --line lol
                for i in $lol
                    echo $i
                end
            end
        else if test "$argv[2]" = "n"
            mdfind $argv[1] | grep -v -e$argv[3..(count $argv)] | while read -a --line lol
                for i in $lol
                    echo $i
                end
            end
        else
            echo 'busca :  Clever interface to mdfind.'
            echo 'Usage : ' 
            echo '$ busca keyword y/n pattern(s)'
            echo 'y -> should contain the pattern(s)'
            echo 'n -> should not contain the pattern(s)'
        end
    else
        echo 'busca :  Clever interface to mdfind.'
        echo 'Usage : ' 
        echo '$ busca keyword y/n pattern(s)'
        echo 'y -> should contain the pattern(s)'
        echo 'n -> should not contain the pattern(s)'
    end
end
