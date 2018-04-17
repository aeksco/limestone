source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2'

# Use postgresql as the database for Active Record
gem 'pg', '~> 0.21'

# Use Puma as the app server
gem 'puma', '~> 3.11'

# Use Rack Timeout. Read more: https://github.com/heroku/rack-timeout
gem 'rack-timeout', '~> 0.4'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 3.4'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# TODO: Consider replacing with active_model_serializers
gem 'jbuilder', '~> 2.5'

# Use Redis Rails to set up a Redis backed Cache and / or Session
gem 'redis-rails', '~> 5'

# Use Font Awesome Rails for Font Awesome icons
# gem 'font-awesome-rails', '~> 4.7'

# Pretty html abstractions
gem 'haml', '~> 5'
gem 'simple_form', '~> 4'

# Authentication
gem 'devise', '~> 4'
# Authorization
gem 'pundit', '~> 1'

# Soft deletes for ActiveRecord done right
gem 'discard', '~> 1'

# Pretty admin dashboards
gem 'administrate', github: 'mattgillooly/administrate', branch: 'support-rails-5.2'

gem 'receipts'
# Stripe stuff
gem 'stripe', '~> 3'
gem 'stripe_event', '~> 2.1'

# Upload to S3 directly
gem 'aws-sdk-s3', '~> 1'

# Process images
gem 'image_processing', '~> 1'
gem 'mini_magick', '>= 4.3.5'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.3', require: false

# Impersonate other users
gem 'pretender', '~> 0.3'

# Search
gem 'searchkick', '~> 3'

# Jerbs
gem 'sidekiq', '~> 5'

# Use Clockwork or Whenever for recurring background tasks
# gem 'clockwork'
# gem 'whenever'

# Feature flagging
gem 'flipper'
gem 'flipper-ui'
gem 'flipper-redis'

group :development do
  gem 'haml-lint', require: false
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'database_cleaner', '~> 1.6'
  gem 'ffaker', '~> 2.7'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'simplecov', require: false
end

group :development, :test do
  gem 'capybara', '~> 2.15'
  gem 'chromedriver-helper'
  gem 'factory_bot_rails', '~> 4.8'
  gem 'pry'
  gem 'rails-controller-testing', '~> 1'
  gem 'rspec-rails', '~> 3.6'
  gem 'selenium-webdriver'
  gem 'stripe-ruby-mock', github: 'archonic/stripe-ruby-mock', require: 'stripe_mock'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data'
