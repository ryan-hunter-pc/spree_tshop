# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_tshop'
  s.version     = '3.0.7'
  s.summary     = 'A Spree application built with the TSHOP template.'
  s.description = 'Spree TSHOP is a Spree Commerce application which is built with the TSHOP Bootstrap template. It uses the built-in Spree views as much as possible, using mainly Deface overrides to apply the skin. A few Spree extensions are required.'
  s.required_ruby_version = '>= 2.0.0'

  s.author    = 'Ryan Hunter'
  s.email     = 'rymalhunt@gmail.com'
  s.homepage  = 'http://www.ryanhunterweb.com'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 3.0.7'

  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.5'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 3.1'
  s.add_development_dependency 'sass-rails', '~> 5.0.0.beta1'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
