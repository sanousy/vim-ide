cp -r vim ~
cp vimrc ~
rm -r ~/oldvim
mkdir ~/oldvim
mv ~/.vim ~/oldvim/oldvim
mv ~/.vimrc ~/oldvim/vimrc
mv ~/vim ~/.vim
mv ~/vimrc ~/.vimrc
ls -a ~/.vim
ls -a ~/.vimrc
#read -p "VIM IDE setup completed"

