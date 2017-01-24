Gem::Specification.new do |spec|
  spec.name          = "rake-contrib"
  spec.version       = "1.0.1"
  spec.authors       = ["SHIBATA Hiroshi"]
  spec.email         = ["hsbt@ruby-lang.org"]

  spec.summary       = %q{Additional libraries for Rake}
  spec.description   = %q{Additional libraries for Rake}
  spec.homepage      = "https://github.com/ruby/rake-contrib"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rake"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "minitest"
end
