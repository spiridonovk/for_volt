source 'https://rubygems.org'
ruby "2.4.1"

gem 'rails', '~> 5.1.4'
gem 'will_paginate', '~> 3.1.0'
gem 'faker', :git => 'git://github.com/stympy/faker.git', :branch => 'master'
gem 'carrierwave', '~> 1.0'
gem 'mini_magick'
gem 'fog-aws'
gem 'active_model_serializers'
gem 'sidekiq'
gem 'sinatra', require: false
gem 'figaro'
gem "therubyracer"
gem 'sprockets', '~> 3.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'puma', '~> 3.7'
gem 'bootstrap-sass', '3.3.7'
gem 'coffee-rails', '4.2.2'
gem 'uglifier',     '3.2.0'

group :development, :test do
  gem 'sqlite3'

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_girl_rails'
  gem 'selenium-webdriver'
  gem 'rspec-rails', '~> 3.6'
end
group :test do
  gem "shoulda-matchers", require: false
end


group :production do
  gem 'pg'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

