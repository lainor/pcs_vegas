# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pcs_vegas/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Silumesii Maboshe"]
  gem.email         = ["silumesii@pencilcasestudios.com"]
  gem.description   = %q{Package the assets for the Vegas Background jQuery plugin by Jay Salvat as a gem.}
  gem.summary       = %q{This gem allows you to use the Vegas Background jQuery plugin by Jay Salvat with the Rails 3.1.x asset pipline.}
  gem.homepage      = "http://github.com/smaboshe/pcs_vegas"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "pcs_vegas"
  gem.require_paths = ["lib"]
  gem.version       = Vegas::VERSION

  #gem.add_development_dependency "rspec", "~> 2.6"
end
