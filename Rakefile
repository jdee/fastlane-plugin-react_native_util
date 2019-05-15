require 'fileutils'

require 'bundler/gem_tasks'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

require 'rubocop/rake_task'
RuboCop::RakeTask.new(:rubocop)

require 'yard'
YARD::Rake::YardocTask.new

desc 'Remove generated files in examples'
task 'clean:examples' do
  FileUtils.rm_rf Dir['examples/**/Pod*', 'examples/**/ios/*.xcworkspace']
end

desc 'Remove all generated files in examples, including node_modules'
task 'clobber:examples' => 'clean:examples' do
  FileUtils.rm_rf Dir['examples/**/node_modules']
end

desc 'Remove all generated files'
task 'clobber:all' => [:clobber, 'clobber:examples'] do
  FileUtils.rm_rf [
    'coverage',
    'doc',
    '.yardoc',
    '_yardoc',
    'test-results'
  ]
end

task(default: [:spec, :rubocop])
