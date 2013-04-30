source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '3.2.13'

gem 'activeadmin', github: 'gregbell/active_admin', branch: 'master'
gem 'pg'
gem 'slim'
gem 'navigasmic'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'rspec_api_documentation', git: 'git://github.com/zipmark/rspec_api_documentation.git'
  gem 'guard-spinach'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'spinach-rails'
  gem 'pry'
  gem 'pry-nav'
end

group :test do
  gem 'launchy'
  gem 'fabrication'
  gem 'webmock'
end

gem 'jquery-rails'
