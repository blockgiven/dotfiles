require "bundler/gem_tasks"

Rake::Task[:release].clear

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
end

task default: :spec
