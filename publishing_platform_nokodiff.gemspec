# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "publishing_platform_nokodiff/version"

Gem::Specification.new do |spec|
  spec.name          = "publishing_platform_nokodiff"
  spec.version       = PublishingPlatformNokodiff::VERSION
  spec.authors       = ["Publishing Platform"]

  spec.summary       = "A Ruby Gem to highlight additions, deletions and character level changes while preserving original HTML"
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 3.2"
  spec.files = Dir[
    "{app,lib}/**/*", "LICENSE", "README.md"
  ]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w[lib]

  spec.add_development_dependency "activesupport"
  spec.add_development_dependency "publishing_platform_rubocop", "~> 0.2"
  spec.add_development_dependency "rake", "13.4.2"
  spec.add_development_dependency "rspec-html-matchers", "0.10.0"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "simplecov"

  spec.add_dependency "actionview", ">= 6", "< 8.1.4"
  spec.add_dependency "byebug"
  spec.add_dependency "diff-lcs"
  spec.add_dependency "rails", ">= 6", "< 8.1.4"
  spec.add_dependency "view_component", "~> 4"
end
