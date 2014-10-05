module Dotfiles
  class OhMyZsh
    REPOSITORY = 'https://github.com/robbyrussell/oh-my-zsh.git'

    def initialize(home_dir: ENV['HOME'])
      @home_dir = home_dir
    end

    def install
      system('git', 'clone', REPOSITORY, oh_my_zsh_path)
    end

    def installed?
      File.exists?(oh_my_zsh_path)
    end

    private

    def oh_my_zsh_path
      File.join(@home_dir, '.oh-my-zsh')
    end
  end
end
