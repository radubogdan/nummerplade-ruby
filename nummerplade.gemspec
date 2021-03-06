# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nummerplade/version'

Gem::Specification.new do |spec|
  spec.name          = "nummerplade-ruby"
  spec.version       = Nummerplade::VERSION
  spec.authors       = ["Radu-Bogdan Croitoru"]
  spec.email         = ["croitoruradubogdan@gmail.com"]

  spec.summary       = %q{Ruby wrapper for Nummerplade API}
  spec.description   = %q{Find information about Danish vehicles}
  spec.homepage      = "https://github.com/radubogdan/nummerplade-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0"
end
