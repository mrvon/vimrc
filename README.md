# Happy Hacking Vim #
This is Mrvon 's Vim setting 

----------

### Install On Mac OS X ###
Install MacVim (with python support and lua support)
> brew install macvim --with-cscope --with-lua --with-python --with-python3 --HEAD

Install the_silver_searcher(ag)
> brew install the_silver_searcher

Because In Mac OS X, vim config path is: ~/.vim and ~/.vimrc

Checkout Mrvon's Vimrc
> cd ~
> git clone https://github.com/mrvon/Vimrc
 

Link to it

> ln Vimrc/_vimrc .vimrc

### Install On Windows 7 x64 ###
*(Already including all binary and library in Microsoft Windows 7 x64)*

Download a executable installer from vim offical website
> http://www.vim.org/ 


### Compile GVim By Yourself (Windows) ###
*Following command must be run on the console open by mingw-w64.bat
 (sh/cmd/powershell may be cause error)*
```sh
mingw32-make.exe -f Make_ming.mak GUI=yes OLE=no USERNAME="MrVon" USERDOMAIN=""
```
```sh
mingw32-make.exe -f Make_ming.mak clean
```
### PATCH Website ###
    ftp://ftp.vim.org/pub/vim/patches/7.4/README

### Some Useful Website ###
vimawesome

	http://vimawesome.com/

vimgolf

	http://vimgolf.com/

bestofvim

	http://bestofvim.com/

reddit

	http://www.reddit.com/r/vim/

nabble

	http://vim.1045645.n5.nabble.com/


### HOW I use Vim
I use Vim write python and lua program. When I write C and C++ program I rather
use Visual Studio + VAX plugin instead of Vim.


### Change GVim be you git default editor
git config --global core.editor gvim
