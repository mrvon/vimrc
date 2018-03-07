# Happy Hacking #

    ```sh
    
    $ ln -s ~/Vimrc/_vimrc ~/.vimrc
    $ ln -s ~/Vimrc/_tmux ~/.tmux.conf
    # Linux
    $ ln -s ~/Vimrc/_gitconfig_linux ~/.gitconfig
    $ ln -s ~/Vimrc/_zshrc_linux ~/.zshrc
    # Mac
    $ ln -s ~/Vimrc/_gitconfig_mac ~/.gitconfig
    $ ln -s ~/Vimrc/_zshrc_mac ~/.zshrc
    ```

### dependencies ###

    + https://github.com/ggreer/the_silver_searcher

### excellent tutorial ###
+ [Practical Vim](https://www.amazon.com/dp/1680501275/ref=olp_product_details?_encoding=UTF8&me=)
+ [Learn vim script the hard way](http://learnvimscriptthehardway.stevelosh.com/)

### tips ###

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
