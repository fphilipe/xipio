# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xipio/version'

Gem::Specification.new do |spec|
  spec.name          = 'xipio'
  spec.version       = Xipio::VERSION
  spec.authors       = ['Philipe Fatio']
  spec.email         = ['me@phili.pe']
  spec.summary       = <<SUMMARY
Add xip.io support to your rails app in development mode.
SUMMARY
  spec.description   = <<DESC
When reading the subdomain of an xip.io request, you will get a different value
compared to a local pow request. The reason for this is that the tld length is
1 by default, but an xip.io request has a tld length of 6. This gem inserts a
middleware that corrects the tld length config of rails on the fly so that you
can use local and xip requests at the same time without restarting the server.
DESC
  spec.homepage      = 'https://github.com/fphilipe/xipio'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'railties', '>= 3'
end
