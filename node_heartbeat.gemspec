# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'node_heartbeat/version'

Gem::Specification.new do |spec|
  spec.name          = "node_heartbeat"
  spec.version       = NodeHeartbeat::VERSION
  spec.authors       = ["Ryan Schlesinger"]
  spec.email         = ["ryan@outstand.com"]

  spec.summary       = %q{Heartbeat server IPs to S3}
  spec.homepage      = 'https://github.com/outstand/node_heartbeat'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'thor', '~> 0.19'
  spec.add_runtime_dependency 'excon', '~> 0.49.0'
  spec.add_runtime_dependency 'fog-aws', '~> 0.9'
  spec.add_runtime_dependency 'mime-types', '~> 3.0'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
