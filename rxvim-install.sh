mv ~/.vim ~/.vim-back
mv ~/.vimrc ~/.vimrc-bac

git clone --recursive https://github.com/ranxian/rxvim.git ~/.vim

echo "source ~/.vim/vimrc" >> ~/.vimrc
if [ -d "~/.vim/.undodir" ]; then
  mkdir ~/.vim/.undodir
fi

vim -u ~/.vim/vimrc +set nomore +BundleInstall +qall!
# After that, add our color scheme configuration
echo "colorscheme brogrammer" >> ~/.vim/vimrc
