# Happy Hacking Vim #
This is *dennis* 's Vim setting

Are you looking for a introduction about it, Please read *[vimrc](https://github.com/mrvon/Vimrc/blob/master/_vimrc)* file comment directly.

----------

### Install On Mac OS X ###

1. Install MacVim (with python support and lua support)

    + Using home brew
        ```sh
        $ brew install macvim --with-cscope --with-lua --with-python3
        $ brew install vim --with-cscope --with-lua --with-python3
        ```


    + Compile by yourself
        ```sh
        ./configure     --with-features=huge                             \
                        --enable-luainterp                               \
                        --enable-python3interp                           \
                        --enable-cscope                                  \
                        --enable-multibyte                               \
                        --enable-gui=macvim                              \
                        --with-lua-prefix=/usr/local/Cellar/lua/5.2.3_2/ \
                        --with-compiledby=MrVon                          \
        ```
2. Install the_silver_searcher(ag)

    ```sh
    $ brew install the_silver_searcher
    ```

3. Checkout Mrvon's Vimrc

    ```sh
    $ cd ~
    $ git clone https://github.com/mrvon/Vimrc
    ```

4. Use Symbol link (*In Mac OS X, vim config path is: ~/.vim and ~/.vimrc*)

    ```sh
    $ ln -s Vimrc/_vimrc .vimrc
    ```

### Install On Ubuntu 64bit ###

1. Install gvim (with python support and lua support)

    + Install dependency
        ```sh
        $ apt-get install python3-dev
        $ apt-get install lua5.3-dev
        $ apt-get build-dep vim-gtk
        ```

    + Install tools
        ```sh
        $ apt-get install ctags
        $ apt-get install silversearcher-ag
        $ apt-get install libclang1
        ```

    + Compile by yourself
        ```sh
        ./configure     --with-features=huge                             \
                        --enable-luainterp                               \
                        --enable-python3interp                           \
                        --enable-cscope                                  \
                        --enable-multibyte                               \
                        --enable-gui=gtk2				                 \
                        --with-lua-prefix=/usr/local                     \
        ```

### Install On Windows 7 x64 ###
*(Already including all binary and library in Microsoft Windows 7 x64)*

1. Download a gvim 7.4 executable installer from vim offical website and Install it

	> http://www.vim.org/

2. Checkout Mrvon's Vimrc

    ```sh
    $ git clone https://github.com/mrvon/Vimrc
    ```

3. Using Vimrc folder to cover install folder
	+ *Install Python 3     (must be x64 version)*
	+ *Install Lua 	        (must be x64 version)*
    + *Install LLVM Clang   (download from http://llvm.org/releases/download.html)*

4. All done

### Compile gvim By Yourself (Windows) ###
*Following command must be run on the console open by mingw-w64.bat
 (sh/cmd/powershell may be cause error)*

+ Build

    ```sh
    $ mingw32-make.exe -f Make_ming.mak                     \
                          USERNAME="MrVon" USERDOMAIN=""    \
    ```

+ Clean

    ```sh
    $ mingw32-make.exe -f Make_ming.mak clean
    ```

### Download patch file ###
* Read following document about how to patch

> ftp://ftp.vim.org/pub/vim/patches/7.4/README

* Use following python script to download patch file

> [download_patchfile.py](https://github.com/mrvon/Vimrc/blob/master/vim74/code/download_patchfile.py)

* Use following python script to apply patch file

> [apply_patchfile.py](https://github.com/mrvon/Vimrc/blob/master/vim74/code/apply_patchfile.py)

### Excellent Tutorial ###
+ [Practical Vim](https://www.amazon.com/dp/1680501275/ref=olp_product_details?_encoding=UTF8&me=)
+ [Learn vim script the hard way](http://learnvimscriptthehardway.stevelosh.com/)

### Useful Website ###
+ [vimawesome](http://vimawesome.com/)
+ [vimgolf](http://vimgolf.com/)
+ [bestofvim](http://bestofvim.com/)
+ [reddit](http://www.reddit.com/r/vim/)
+ [nabble](http://vim.1045645.n5.nabble.com/)

### How I use Vim
+ I use Vim write c, lua, python, go, markdown, config, anything else.

+ Gvim be you git default editor and gvimdiff as difftool

    ```sh
    # should use command *git difftool*, *git mergetool* instead.
    $ git config --global core.editor "gvim -f"
    $ git config --global diff.tool    gvimdiff
    $ git config --global merge.tool   gvimdiff
    $ git config --global difftool.prompt false
    ```

+ Mvim be you git default editor, difftool and mergetool

    ```sh
    $ git config --global core.editor "mvim -f"
    $ git config --global merge.tool mvimdiff
    $ git config --global mergetool.mvimdiff.cmd 'mvim -df $BASE $LOCAL $REMOTE $MERGED'
    $ git config --global diff.tool mvimdiff
    $ git config --global difftool.mvimdiff.cmd 'mvim -df $LOCAL $REMOTE'
    $ git config --global difftool.prompt false
    ```
