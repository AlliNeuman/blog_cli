# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blog_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "blog_cli"
  spec.version       = BlogCLI::VERSION
  spec.authors       = ["aviflombaum"]
  spec.email         = ["avi@flombaum.com"]

  spec.summary       = "A blog gem cli"
  spec.homepage      = "https://github.com/allineuman/gem_cli"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = 'bin/blog'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "activerecord", "~> 5.0"
  spec.add_dependency 'sqlite3'
  spec.add_dependency 'sinatra'
  spec.add_dependency 'sinatra-activerecord'
end
