mv ~/.vim ~/.vim-back
mv ~/.vimrc ~/.vimrc-bac

git clone --recursive https://github.com/ranxian/rxvim.git ~/.vim

echo "source ~/.vim/vimrc" >> ~/.vimrc

vim -u ~/.vim/vimrc +set nomore +BundleInstall +qall!