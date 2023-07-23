In order to see the files, show hidden files ( .vimrc, .vim)
in order to activate clipboard functionality you must install vim-gtk3 (i.e. sudo apt install vim-gtk3 <CR>)

Please don't forget to rename vim folder to .vim !
It does not need any plugin manager.

This vimrc has been developed on Ubuntu Mate 22.04
vim is different from vi which ships already with ubunutu, so you have to install the following:

LICSENSE
=========

MIT / you are free to do whatever you want with it, sell, change, fork, ... enjoy, without any legal responsibility on me!

INSTALL
========

sudo apt install vim
sudo apt install vim-gtk3

copy .vimrc to your home folder (~)
copy vim to your home folder (~), and then rename it to .vim (instead of vim).

Happy viming! :)

SCREENSHOTS
===========
included in the folder

FEATURES
========

in this setup I have included the following:
- using Tabs (Shift-F12) opens a new tab with a file Explorer, once you select a file, it will open it
- Toggle netrw using (F12)
- close any tab (buffer) when pressing (Ctrl-F12)
- open built-in Terminal by pressing (F8)
- Or open a vertical terminal by pressing (Shift-F8)
- Auto indent the code by pressing (F3)
- Ctrl-a : Select all
- Ctrl-c : copy ( to system clipboard)
- Ctrl-v : paste ( from system clipboard)
- Ctrl-x : cut ( into system clipboard)
- Ctrl-(arrow): navigate between open windows ( when using split or vsplit commands)
- emmet : plugin (downloaded from github emmet repository)
- colorscheme: my favorite sano.vim
- F3 smart indentation 2 for html, js, css, and 4 for rest
- Ctrl+PgUP , Ctrl+PgDn to navigate between buffers (tabs at the top of the screen)
- Ctrl-s : save
- Ctrl-o : open
- Ctrl-q : close 

for me I thought it is enough, to make it great IDE.

I use it on my Ubuntu 20.4, in order to ensure all functions will work fine with you ensure to run :

sudo apt-get install vim
sudo apt upgrade vim-gtk

the second line helps the vim editor to interact with system clipboard.

I have added all shells required to install vim (installvim.sh)
and to store the .vim & .vimrc into your home directory, so you can enjoy directly running vi with a good look, and simple yet nice functionality that serves 70% of actions you might need as developer, although I have vscode, but still I think vim is so poerful and handy to edit side files, and view huge files as well in a very efiicient way.

Sanousy.

