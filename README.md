## Happy Hacking Vim
Mrvon 's setting (all file(binary/library) is x64 version in Microsoft Windows)

### Compile gVim By Yourself (Windows)
Following command must be run on the console open by mingw-w64.bat (sh/cmd/powershell may be cause error)
```sh
mingw32-make.exe -f Make_ming.mak GUI=yes OLE=no USERNAME="MrVon" USERDOMAIN=""
```
```sh
mingw32-make.exe -f Make_ming.mak clean
```
### PATCH Website
```sh
ftp://ftp.vim.org/pub/vim/patches/7.4/README
```

### Some Useful Website
vimawesome
```sh
http://vimawesome.com/
```
vimgolf
```sh
http://vimgolf.com/
```
bestofvim
```sh
http://bestofvim.com/
```
reddit
```sh
http://www.reddit.com/r/vim/
```
nabble
```sh
http://vim.1045645.n5.nabble.com/
```

### When I write C and C++ program
I rather use Visual Studio + VAX plugin

### Change gVim be you git default editor
git config --global core.editor gvim
