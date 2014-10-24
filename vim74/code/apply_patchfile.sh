for k in "00"; do
    for ((i = 1; i < 10; ++i)); do
        echo 7.4.$k$i 
        patch -p0 < 7.4.$k$i.txt
    done
done

for k in "01" "02" "03" "04" "05" "06" "07" "08" "09"; do
    for ((i = 0; i < 10; ++i)); do
        echo 7.4.$k$i 
        patch -p0 < 7.4.$k$i.txt
    done
done

for ((k = 10; k < 45; ++k)) do
    for ((i = 0; i < 10; ++i)); do
        echo 7.4.$k$i 
        patch -p0 < 7.4.$k$i.txt
    done
done
