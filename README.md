# Happy Hacking Vim #
This is *mrvon* 's Vim setting 

Are you looking for a introduction about it, Please read *[vimrc](https://github.com/mrvon/Vimrc/blob/master/_vimrc)* file comment directly.

----------

### Install On Mac OS X ###

1. Install MacVim (with python support and lua support)

    + Using home brew
        ```
        $ brew install macvim --with-cscope --with-lua --with-python3
        $ brew install vim --with-cscope --with-lua --with-python3
        ```
 

    + Compile by yourself
        ```
        ./configure     --with-features=huge                             \
                        --enable-luainterp                               \
                        --enable-pythoninterp                            \
                        --enable-python3interp                           \
                        --enable-cscope                                  \
                        --enable-multibyte                               \
                        --enable-gui=macvim                              \
                        --with-lua-prefix=/usr/local/Cellar/lua/5.2.3_2/ \
                        --with-compiledby=MrVon                          \
        ```

2. Install the_silver_searcher(ag)

	```
	$ brew install the_silver_searcher
	```

3. Checkout Mrvon's Vimrc

    ```
    $ cd ~
    $ git clone https://github.com/mrvon/Vimrc
    ```

4. Use Symbol link (*In Mac OS X, vim config path is: ~/.vim and ~/.vimrc*)

    ```
    $ ln -s Vimrc/_vimrc .vimrc
    ```

### Install On Ubuntu 64bit ###

1. Install gvim (with python support and lua support)

    + Install dependency
        ```
        $ apt-get install python-dev
        $ apt-get install python3-dev
        $ apt-get install lua5.2-dev
        $ apt-get build-dep vim-gtk
        ```

    + Install tools
        ```
        $ apt-get install ctags
        $ apt-get install silversearcher-ag
        $ apt-get install libclang1
        ```

    + Compile by yourself
        ```
        ./configure     --with-features=huge                             \
                        --enable-luainterp                               \
                        --enable-pythoninterp                            \
                        --enable-python3interp                           \
                        --enable-cscope                                  \
                        --enable-multibyte                               \
                        --enable-gui=gtk2				                 \
        ```

### Install On Windows 7 x64 ###
*(Already including all binary and library in Microsoft Windows 7 x64)*

1. Download a gvim 7.4 executable installer from vim offical website and Install it

	> http://www.vim.org/ 

2. Checkout Mrvon's Vimrc

    ```
    $ git clone https://github.com/mrvon/Vimrc
    ```

3. Using Vimrc folder to cover install folder
	+ *Install Python 2 (must be 2.7 x64 version)*
	+ *Install Python 3 (must be 3.3 x64 version)*
	+ *Install Lua 	 (must be 5.1 x64 version)*

4. All done
 
### Compile GVim By Yourself (Windows) ###
*Following command must be run on the console open by mingw-w64.bat
 (sh/cmd/powershell may be cause error)*

+ Build

    ```
    $ mingw32-make.exe -f Make_ming.mak                    \
                            GUI=yes OLE=no                 \
                            USERNAME="MrVon" USERDOMAIN="" \
    ```

+ Clean

    ```
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
+ [Learn vim script the hard way](http://learnvimscriptthehardway.stevelosh.com/)
+ [Practical Vim]()

### Useful Website ###
+ [vimawesome](http://vimawesome.com/)
+ [vimgolf](http://vimgolf.com/)
+ [bestofvim](http://bestofvim.com/)
+ [reddit](http://www.reddit.com/r/vim/)
+ [nabble](http://vim.1045645.n5.nabble.com/)

### How I use Vim
+ I use Vim write python, lua, sql program.

+ Change GVim be you git default editor

    ```
    $ git config --global core.editor gvim
    ```
