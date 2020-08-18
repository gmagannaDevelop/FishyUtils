
function ultimas
    for entry in $argv[1]/(ls -t $argv[1] | head -$argv[2])
        echo (string replace "//" "/" $entry)
    end
end

