require 'spec_helper'
require 'tmpdir'

RSpec.describe Dotfiles::LinkedFiles do
  describe 'SOURCE_DIR' do
    subject { Dotfiles::LinkedFiles::SOURCE_DIR }

    it { is_expected.to eq File.expand_path('../../linked_files', __dir__) }
  end

  describe '#link!' do
    def linked_files_with_temp_home_dir
      Dir.mktmpdir do |home_dir|
        yield Dotfiles::LinkedFiles.new(home_dir: home_dir), home_dir
      end
    end

    shared_examples 'creates a symlink to' do |filename|
      specify "creates a symlink to #{filename}" do
        linked_files_with_temp_home_dir do |lf, home_dir|
          source_path = File.join(Dotfiles::LinkedFiles::SOURCE_DIR, filename)
          dest_path = File.join(home_dir, filename)

          lf.link!

          expect(File).to be_exists(dest_path)
          expect(File).to be_symlink(dest_path)
          expect(File.readlink(dest_path)).to eq source_path
        end
      end
    end

    include_examples 'creates a symlink to', '.atom'
    include_examples 'creates a symlink to', '.emacs'
    include_examples 'creates a symlink to', '.gitconfig'
    include_examples 'creates a symlink to', '.zshenv'
    include_examples 'creates a symlink to', '.zshrc'
  end
end
