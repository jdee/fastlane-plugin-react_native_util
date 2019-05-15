source('https://rubygems.org')

gemspec

gem 'react_native_util', path: '../react_native_util'

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
