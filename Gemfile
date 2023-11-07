source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

# Core
gem 'rails', '~> 7.0.2', '>= 7.0.2.3'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'bootsnap', require: false

# JavaScript
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'

# Stylesheets
gem 'sassc-rails'
gem 'bootstrap', '~> 5.1.3'

# Views
gem 'slim-rails'
gem 'simple_form'
gem 'country_select'
gem 'friendly_id', '~> 5.4.0'

# Authentication
gem 'devise'

# Active Storage variant
gem 'image_processing', '~> 1.2'
gem 'aws-sdk-s3', '~> 1', require: false

# Others
gem 'acts_as_shopping_cart', '~> 0.4.0', github: 'fzrhrs/acts_as_shopping_cart'

group :development, :test do
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem 'web-console'

  gem 'letter_opener_web', '~> 1.0', github: 'fzrh/letter_opener_web'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]
