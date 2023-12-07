cp vimConfig/vimrc ~/
mv ~/vimrc ~/.vimrc

cp -r vimConfig/vim.zip ~/
unzip ~/vim.zip
mv ~/vim ~/.vim

echo 'alias nano="vim"' >> ~/.bashrc # vim > nano
clear

vim
