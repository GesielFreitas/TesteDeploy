source 'https://rubygems.org'

#Gems to use in views
gem 'bootstrap-sass', '~> 3.3.6'

source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap'
  gem 'rails-assets-angular'
  gem 'rails-assets-leaflet'
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use sqlite3 as the database for Active Record
group :production do
 gem 'mysql2'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use Paperclip to upload images
gem 'paperclip', '~> 4.3.2'
# Use Bcrypt to cryptograph password
gem 'bcrypt-ruby', '3.1.2'
# Use will_paginate for pagination
gem 'will_paginate', '~> 3.1.0'
gem 'will_paginate-bootstrap', '~> 1.0', '>= 1.0.1'

gem 'simplecov', :require => false, :group => :test
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem "codeclimate-test-reporter", group: :test, require: nil
gem 'metric_fu', '~> 4.12'
gem 'coveralls', require: false


group :development, :test do
  gem 'rspec-rails', '~> 3.4'
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  gem 'selenium-webdriver', '~> 2.53'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'mysql2'


  gem 'dotenv-rails', :groups => [:development, :test]

  gem "cocoon"
  gem "nested_form_fields", ">= 0.7.8"

  gem 'capistrano', '~> 3.7'

  gem 'capistrano-bundler', '~> 1.2'

  gem 'capistrano-rails', '~> 1.2'

ruby "2.3.1"

end