require "dotfiles/version"
require "dotfiles/linked_files"
require "dotfiles/oh_my_zsh"

module Dotfiles
  module_function

  def install
    LinkedFiles.new.link!

    oh_my_zsh = OhMyZsh.new
    oh_my_zsh.install unless oh_my_zsh.installed?
  end
end
