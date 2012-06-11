# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jquery_dynamic_fields/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Aaron Cruz"]
  gem.email         = ["aaron@aaroncruz.com"]
  gem.description   = %q{Dynamically add and remove form fields in a Rails 3.1+ app}
  gem.summary       = %q{Dynamically add and remove form fields in a Rails 3.1+ app}
  gem.homepage      = "https://github.com/pferdefleisch/jquery_dynamic_fields"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "jquery_dynamic_fields"
  gem.require_paths = ["lib"]
  gem.version       = JqueryDynamicFields::VERSION
end
