# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rails_bootstrap_helpers/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Aaron Cruz"]
  gem.email         = ["aaron@aaroncruz.com"]
  gem.description   = %q{Some helpful Twitter Bootstrap Rails helpers.  
                         I felt the pain of the upgrade from Twitter Bootstrap 
                         1.6 to 2.0 and these were the result.}
  gem.summary       = %q{Some helpful Twitter Bootstrap Rails helpers.}
  gem.homepage      = "https://github.com/pferdefleisch/rails_bootstrap_helpers"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rails_bootstrap_helpers"
  gem.require_paths = ["lib"]
  gem.add_dependency 'rails', '~> 3.0'
  gem.version       = RailsBootstrapHelpers::VERSION
end
