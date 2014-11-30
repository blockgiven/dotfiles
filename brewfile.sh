#!/usr/bin/env bash
set -e

brew update
brew upgrade

brew install automake
brew install emacs --cocoa
brew install go
brew install hub
brew install npm
brew install openssl
brew install phantomjs
brew install postgres
brew install rbenv
brew install rbenv-default-gems
brew install rbenv-gem-rehash
brew install readline
brew install ruby-build
brew install tig
brew install tree
brew install zsh

brew tap motemen/ghq
brew install ghq

brew tap peco/peco
brew install peco

brew install caskroom/cask/brew-cask
brew cask install atom
brew cask install coteditor
brew cask install dropbox
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install heroku-toolbelt
brew cask install iterm2
brew cask install java
brew cask install minecraft
brew cask install onepassword
brew cask install vagrant
brew cask install vagrant-manager
brew cask install virtualbox
brew cask install xquartz
brew cask install yorufukurou

brew tap sanemat/font
brew install ricty

brew linkapps

brew cleanup
