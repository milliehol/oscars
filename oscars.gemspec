
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "oscars/version"

Gem::Specification.new do |spec|
  spec.name          = "oscars"
  spec.version       = Oscars::VERSION
  spec.authors       = ["'Carla Holcomb'"]
  spec.email         = ["'carla.programmer@gmail.com'"]

  spec.summary       = "Oscar Awards for Best Actor"
  spec.description   = "Find out who won an Oscar every year."
  spec.homepage      = "https://github.com/milliehol/oscars/"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
