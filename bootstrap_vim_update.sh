# Updates vim plugins with a compilation component

vim +PluginInstall +qall

# https://github.com/Valloric/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer --omnisharp-completer --gocode-completer
