require "dotfiles/version"
require "dotfiles/linked_files"

module Dotfiles
  module_function

  def install
    LinkedFiles.new.link!
  end
end
