#!/bin/bash

# Install command-line tools using Homebrew.
xcode-select --install

# Ask for the administrator password upfront.
sudo -v

brew tap homebrew/dupes
brew tap neovim/neovim

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install new packages
brew install ack
brew install bash
brew install bash-completion2
brew install coreutils
brew install dnsmasq libidn
brew install elasticsearch
brew install gearman
brew install git
brew install gpg
brew install gradle
brew install graphicsmagick
brew install imagemagick --with-webp
brew install leiningen
brew install --HEAD llvm --with-clang
brew install macvim --with-lua --custom-system-icons --override-system-vim
brew install maven
brew install nvm
brew install --HEAD neovim
brew install php56-xdebug php56-gearman php56-gmagick php56-intl --build-from-source
brew install reattach-to-user-namespace
brew install rsync
brew install ssh-copy-id
brew install the_silver_searcher
brew install terminal-notifier && brew linkapps terminal-notifier
brew install tmux
brew install tree
brew install vim --override-system-vi
brew install weechat --with-lua --with-perl --with-python --with-ruby --HEAD --with-aspell

# languages
brew install elixir
brew install erlang
brew install go --cross-compile-common
brew install groovy
brew install python python3

# C lang
brew install gcc --with-all-languages
brew install make --with-guile
brew install remake
brew install boost --c++11
brew install doxygen
brew install ncurses
brew install check
brew install cmockery
brew install cunit

# TAP-compliant test framework for Bash scripts
brew install bats

# database command line clients
brew install mycli
brew install pgcli

# The Xcode Command Line Tools do not include GCC, they include LLVM-GCC.
# Same-same, but different.
brew install apple-gcc42
brew install gdb

# Install desktop apps
brew install caskroom/cask/brew-cask
brew cask install chefdk
brew cask install gimp
brew cask install iterm2
brew cask install kitematic
brew cask install vagrant
brew cask install vagrant-manager
brew cask install vagrant-bar
brew cask install virtualbox

vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-berkshelf

# Symlink installed formulae that  have compiled .app-style "application"
# packages for OS X, and symlink those apps into /Applications
brew linkapps

# Remove outdated versions from the cellar.
brew cleanup

# Post-install
nvm install stable
nvm use stable
nvm alias default stable

npm install -g yo bower grunt-cli gulp
npm install -g yuidocjs jshint
npm install -g ember
npm install -g phantomjs

# javascript test runner
npm install -g testem
npm install -g karma