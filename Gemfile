source "https://rubygems.org"
source 'https://rails-assets.org'

ruby "2.1.5"

gem 'airbrake'
gem 'autoprefixer-rails'
gem 'coffee-rails'
gem 'delayed_job_active_record'
gem 'email_validator'
gem 'i18n-tasks'
gem 'jquery-rails'
gem 'normalize-rails', '~> 3.0.0'
gem 'pg'
gem 'rack-timeout'
gem 'rails', '4.1.8'
gem 'rails-assets-normalize-scss'
gem 'recipient_interceptor'
gem 'responders'
gem 'sass'
gem 'showcase'
gem 'simple_form'
gem 'slim-rails'
gem 'uglifier'
gem 'unicorn'

group :development do
  gem "bundler-audit"
  gem "spring"
  gem "spring-commands-rspec"
end

group :development, :test do
  gem 'better_errors'
  gem "byebug"
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.0.0"
end

group :test do
  gem "capybara-webkit", ">= 1.2.0"
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
  gem 'rails_12factor'
end


