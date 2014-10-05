module Dotfiles
  class LinkedFiles
    SOURCE_DIR = File.expand_path('../../linked_files', __dir__)

    def initialize(home_dir: ENV['HOME'], source_dir: SOURCE_DIR)
      @home_dir = home_dir
      @source_dir = source_dir
    end

    def link!
      linked_file_paths.each do |path|
        link_file!(path)
      end
    end

    private

    def link_file!(path)
      unless linked?(path)
        puts "#{path} -> #{dest_path(path)}"
        File.symlink(path, dest_path(path))
      end
    end

    def linked?(path)
      return false unless File.symlink?(dest_path(path))

      unless File.readlink(dest_path(path)) == path
        raise "#{dest_path(path)} is not link to #{path}"
      end

      true
    end

    def dest_path(path)
      File.join(@home_dir, File.basename(path))
    end

    def linked_file_paths
      Dir[File.join(@source_dir, '.*')]
      .map {|path|
        File.expand_path(path)
      }
      .reject {|path|
        source_dir_parent?(path) || source_dir?(path)
      }
    end

    def source_dir?(path)
      @source_dir == path
    end

    def source_dir_parent?(path)
      File.expand_path(File.join(@source_dir, '..')) == path
    end
  end
end
