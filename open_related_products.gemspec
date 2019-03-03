lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'open_related_products/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'open_related_products'
  s.version     = OpenRelatedProducts.version
  s.summary     = 'Allows multiple types of relationships between products to be defined'
  s.description = s.summary
  s.required_ruby_version = '>= 2.5.3'

  s.author       = 'Leo Wang'
  s.homepage     = 'https://github.com/99cm/open_related_products'
  s.license      = 'BSD-3'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_runtime_dependency 'open_backend', 'master'

  s.add_development_dependency 'factory_bot', '~> 4.7'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sqlite3'. '~> 1.3.6'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'capybara-screenshot'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'puma'
end