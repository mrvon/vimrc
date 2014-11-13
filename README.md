# Happy Hacking Vim #
This is Mrvon 's Vim setting (Please read _vimrc file comment directly)

----------

### Install On Mac OS X ###

1. Install MacVim (with python support and lua support)

	> brew install macvim --with-cscope --with-lua --with-python --with-python3

	> brew install vim --with-cscope --with-lua --with-python --with-python3

2. Install the_silver_searcher(ag)
	> brew install the_silver_searcher

3. Checkout Mrvon's Vimrc
	> cd ~
	>
	> git clone https://github.com/mrvon/Vimrc

4. Use Symbol link (*In Mac OS X, vim config path is: ~/.vim and ~/.vimrc*)
	> ln -s Vimrc/_vimrc .vimrc

### Install On Windows 7 x64 ###
*(Already including all binary and library in Microsoft Windows 7 x64)*

1. Download a gvim 7.4 executable installer from vim offical website and Install it
	> http://www.vim.org/ 

2. Checkout Mrvon's Vimrc
	> git clone https://github.com/mrvon/Vimrc

3. Using Vimrc folder to cover install folder
	+ *Install Python 2 (must be 2.7 x64 version)*
	+ *Install Python 3 (must be 3.3 x64 version)*
	+ *Install Lua 	 (must be 5.1 x64 version)*

4. All done
 
### Compile GVim By Yourself (Windows) ###
*Following command must be run on the console open by mingw-w64.bat
 (sh/cmd/powershell may be cause error)*

> mingw32-make.exe -f Make_ming.mak GUI=yes OLE=no USERNAME="MrVon" USERDOMAIN=""

> mingw32-make.exe -f Make_ming.mak clean

### Download patch file ###
* Read following document about how to patch

> ftp://ftp.vim.org/pub/vim/patches/7.4/README

* Use following python script to download patch file

> [download_patchfile.py](https://github.com/mrvon/Vimrc/blob/master/vim74/code/download_patchfile.py)

* Use following python script to apply patch file

> [apply_patchfile.py](https://github.com/mrvon/Vimrc/blob/master/vim74/code/apply_patchfile.py)

### Some Useful Website ###
+ [vimawesome](http://vimawesome.com/)
+ [vimgolf](http://vimgolf.com/)
+ [bestofvim](http://bestofvim.com/)
+ [reddit](http://www.reddit.com/r/vim/)
+ [nabble](http://vim.1045645.n5.nabble.com/)

### HOW I use Vim
> I use Vim write python and lua program.<br>
> When I write C and C++ program I rather
> use Visual Studio + VAX plugin instead of Vim.

### Change GVim be you git default editor
    git config --global core.editor gvim
