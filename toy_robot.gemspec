Gem::Specification.new do |gem|
  gem.name          = "toy_robot"
  gem.version       = "0.0.1"
  gem.summary       = %q{Toy Robot Simulator}
  gem.description   = %q{A simulation of a toy robot moving on a square tabletop}
  gem.license       = "MIT"
  gem.authors       = ["Victor Wibisono"]
  gem.email         = "mail@victor.ac"
  gem.homepage      = "https://rubygems.org/gems/toy-robot"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
