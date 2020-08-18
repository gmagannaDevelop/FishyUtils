
function extract_times
    if test (count $argv) -ne 1
        echo "This function takes exactly one argument: the function name"
    else
        echo "Name  Time (s)" > $argv[1]_times.txt
        for i in (ls | grep jsonl) 
            set nombre (string split "-" $i)[1]
            set tiempo (string replace -r "\"[^\:]*" "" (cat $i | grep $argv[1] | jq | grep "execution time"))
            set tiempo (string replace ':' "" $tiempo)
            set tiempo (string trim $tiempo)
            echo "$nombre  $tiempo" >> $argv[1]_times.txt
        end
    end
end
