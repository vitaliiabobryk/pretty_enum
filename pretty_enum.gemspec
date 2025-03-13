# frozen_string_literal: true

require_relative 'lib/pretty_enum/version'

Gem::Specification.new do |s|
  s.name = 'pretty_enum'
  s.version = PrettyEnum::VERSION
  s.authors = ['Vitaliia Bobryk']
  s.email = ['vitaliia.bobryk@gmail.com']

  s.summary = 'A tiny gem that extends Rails enums to allow human-friendly labels'
  s.license = 'MIT'
  s.required_ruby_version = '>= 3.0.0'
  s.homepage = 'https://rubygems.org/gems/pretty_enum'

  s.metadata['homepage_uri'] = s.homepage
  s.metadata['source_code_uri'] = 'https://github.com/vitaliiabobryk/pretty_enum'

  s.files = ['lib/pretty_enum.rb']
  s.bindir = 'exe'
  s.executables = s.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'rake', '~> 13.2', '>= 13.2.1'
  s.add_dependency 'rspec', '~> 3.13'
end
