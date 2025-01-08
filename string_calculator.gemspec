# frozen_string_literal: true

require_relative "lib/string_calculator/version"

Gem::Specification.new do |spec|
  spec.name = "string_calculator"
  spec.version = StringCalculator::VERSION
  spec.authors = ["Satyakam Pandya"]
  spec.email = ["satyakampandya@gmail.com"]

  spec.summary = "A simple Ruby gem for performing string-based arithmetic operations."
  spec.description = "StringCalculator is a Ruby gem that provides utilities for performing arithmetic operations on strings containing numbers. It is lightweight, easy to use, and designed for developers who need basic string arithmetic functionality."

  spec.homepage = "https://github.com/satyakampandya/string_calculator"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/satyakampandya/string_calculator"
  spec.metadata["changelog_uri"] = "https://github.com/satyakampandya/string_calculator/blob/main/CHANGELOG.md"

  # https://guides.rubygems.org/mfa-requirement-opt-in/
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
