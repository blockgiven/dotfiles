#!/usr/bin/env bash
set -e

brew update
brew upgrade

brew install emacs
brew install go
brew install hub
brew install npm
brew install openssl
brew install phantomjs
brew install postgres
brew install rbenv
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
brew cask install minecraft
brew cask install onepassword
brew cask install yorufukurou

brew cleanup
