# frozen_string_literal: true

require_relative 'lib/tailwind_form/version'

Gem::Specification.new do |spec|
  spec.name          = 'tailwind_form'
  spec.version       = TailwindForm::VERSION
  spec.authors       = ['maxmetcalf12']
  spec.email         = ['maxmetcalf12@gmail.com']

  spec.summary       = 'Tailwind form builder makes it easy to style forms consistently using TailwindCSS'
  spec.description   = 'Longer description'
  spec.homepage      = 'https://github.com/maxmetcalf12/tailwind_form'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
