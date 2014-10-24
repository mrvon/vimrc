for k in "00" "01" "02" "03" "04" "05" "06" "07" "08" "09"; do
    for ((i = 0; i < 10; ++i)); do
        echo ftp://ftp.vim.org/pub/vim/patches/7.4/7.4.$k$i 
        curl -o 7.4.$k$i.txt ftp://ftp.vim.org/pub/vim/patches/7.4/7.4.$k$i 
    done
done

for ((k = 10; k < 47; ++k)) do
    for ((i = 0; i < 10; ++i)); do
        echo ftp://ftp.vim.org/pub/vim/patches/7.4/7.4.$k$i 
        curl -o 7.4.$k$i.txt ftp://ftp.vim.org/pub/vim/patches/7.4/7.4.$k$i 
    done
done
