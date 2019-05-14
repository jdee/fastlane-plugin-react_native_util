lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/react_native_util/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-react_native_util'
  spec.version       = Fastlane::ReactNativeUtil::VERSION
  spec.author        = 'Jimmy Dee'
  spec.email         = 'jgvdthree@gmail.com'

  spec.summary       = 'Community utilities for React Native projects'
  spec.homepage      = "https://github.com/jdee/fastlane-plugin-react_native_util"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  spec.add_dependency 'react_native_util', '~> 0.5'

  spec.add_development_dependency 'bundler', '>= 1.16'
  spec.add_development_dependency 'fastlane', '~> 2.122'
  spec.add_development_dependency 'pry', '~> 0.12'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec', '~> 3.8'
  spec.add_development_dependency 'rspec-simplecov', '~> 0.2'
  spec.add_development_dependency 'rspec_junit_formatter', '~> 0.4'
  spec.add_development_dependency 'rubocop', '0.65.0'
  spec.add_development_dependency 'rubocop-require_tools', '~> 0.1'
  spec.add_development_dependency 'simplecov', '~> 0.16'
  spec.add_development_dependency 'yard', '~> 0.9'
end
