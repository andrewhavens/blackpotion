# -*- encoding: utf-8 -*-
Gem::Specification.new do |spec|
  spec.name          = "blackpotion"
  spec.version       = "0.1.0"
  spec.authors       = ["Andrew Havens"]
  spec.email         = ["email@andrewhavens.com"]
  spec.description   = %q{Build tvOS apps in RubyMotion}
  spec.summary       = %q{Build tvOS apps in RubyMotion}
  spec.homepage      = "https://github.com/infinitered/blackpotion"
  spec.license       = "MIT"

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"

  spec.add_dependency "thor"
end
