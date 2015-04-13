# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + "/lib/null_plus/version"

Gem::Specification.new do |gem|
  gem.name          = "null_plus"
  gem.version       = NullPlus::VERSION
  gem.summary       = "+nil"
  gem.description   = "This gem redefines Ruby's unary + operator to turn null objects into nil. By default, the unary + operator is not used by Ruby, so overloading it is not so dangerous as it might have sounded to you when you read it. Every object that returns true for null? is considered a null object."
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["mail@janlelis.de"]
  gem.homepage      = "https://github.com/janlelis/null_plus"
  gem.license       = "MIT"

  gem.files         = Dir["{**/}{.*,*}"].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = "~> 2.0"
  gem.add_dependency "null_question", "~> 1.0"
end
