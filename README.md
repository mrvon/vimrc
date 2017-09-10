# Happy Hacking Vim #
This is *dennis* 's Vim setting

Are you looking for a introduction about it, Please read *[vimrc](https://github.com/mrvon/Vimrc/blob/master/_vimrc)* file comment directly.

----------

### Install On Mac OS X ###

1. Install MacVim (with python support)

    + Using home brew
        ```sh
        $ brew install macvim --with-cscope --with-python3
        $ brew install vim --with-cscope --with-python3
        ```


    + Compile by yourself
        ```sh
        ./configure     --with-features=huge                             \
                        --enable-python3interp                           \
                        --enable-cscope                                  \
                        --enable-multibyte                               \
                        --enable-gui=macvim                              \
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

1. Install gvim (with python support)

    + Install dependency
        ```sh
        $ apt-get install python3-dev
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
                        --enable-python3interp                           \
                        --enable-cscope                                  \
                        --enable-multibyte                               \
                        --enable-gui=gtk2                                \
        ```

### Install On Windows 7 x64 ###

+ [See](https://github.com/mrvon/vim_for_win)

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
