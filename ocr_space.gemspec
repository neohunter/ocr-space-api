# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ocr_space/version'

Gem::Specification.new do |spec|
  spec.name          = "ocr_space"
  spec.version       = OcrSpace::VERSION
  spec.authors       = ["Andres Roa"]
  spec.email         = ["andfb18@gmail.com"]

  spec.summary       = %q{text in images}
  spec.description   = %q{text in images}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"
  spec.add_runtime_dependency "rest-client"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
