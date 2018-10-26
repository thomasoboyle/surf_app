source 'https://rubygems.org'

gem 'paperclip', '~> 5.2.0'
gem 'pry'
gem 'high_voltage', '~> 3.0.0'
gem 'will_paginate', '~> 3.1.0'
gem 'annotate'
gem 'bcrypt', '3.1.11'
gem 'bugsnag'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'pg', '0.18.4'

# Rspec
#%w[rspec rspec-core rspec-expectations rspec-mocks rspec-support].each do |lib|
#  gem lib, :git => "https://github.com/rspec/#{lib}.git", :branch => 'master'
#end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

group :development do
  gem 'pry-rails'
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'binding_of_caller' # Allows accesss to REPL in 'Better Errors' error pages
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  ruby '2.3.0'
end


group :test do
  gem 'faker'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'launchy'
end
