# frozen_string_literal: true

require_relative 'lib/emojinator/version'

Gem::Specification.new do |spec|
  spec.name          = 'emojinator'
  spec.version       = Emojinator::VERSION
  spec.authors       = ['FluffyStitch']
  spec.email         = ['ntkoroleva1@gmail.com']

  spec.summary       = 'Replace swear words with emojis'
  spec.homepage      = 'https://github.com/FluffyStitch/emojinator'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.2')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'lefthook', '~> 0.7.2'
  spec.add_development_dependency 'pry', '~> 0.14.1'
  spec.add_development_dependency 'rspec', '~> 3.10.0'
  spec.add_development_dependency 'rubocop', '~> 1.12.1'
  spec.add_development_dependency 'rubocop-performance', '~> 1.10.2'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.2.0'
end
