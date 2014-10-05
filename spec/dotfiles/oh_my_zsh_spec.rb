require 'spec_helper'
require 'fileutils'
require 'tmpdir'

describe Dotfiles::OhMyZsh do
  describe '#installed?' do
    let(:home_dir) { Dir.mktmpdir }

    after do
      FileUtils.rm_rf home_dir
    end

    subject { Dotfiles::OhMyZsh.new(home_dir: home_dir) }

    context '$HOME/.oh-my-zsh is already exists' do
      before do
        FileUtils.mkdir(File.join(home_dir, '.oh-my-zsh'))
      end

      it { is_expected.to be_installed }
    end

    context '$HOME/.oh-my-zsh is not exists' do
      it { is_expected.not_to be_installed }
    end
  end
end
