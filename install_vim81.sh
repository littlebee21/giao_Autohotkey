 
sudo apt-get remove vim vim-runtime vim-tiny vim-common
sudo apt-get install libncurses5-dev

git clone https://github.com/vim/vim.git

cd vim/src

sudo ./configure --with-features=huge \
--enable-multibyte \
--enable-rubyinterp=yes \
--enable-pythoninterp=yes \
--enable-python3interp=yes \
--prefix=/usr/local/vim82
--with-python3-command=python3

 

sudo make
sudo make install
