for i in .*; do
    if [ ${#i} -gt 2 ]; then
        echo moving $i
        mv $i ~
    fi
done
