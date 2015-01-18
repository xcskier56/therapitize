source 'https://rubygems.org'
ruby '2.1.2'
  gem 'rails', '4.1.4'
  gem 'pg'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'jquery-rails'
  gem 'turbolinks'
  gem 'jbuilder', '~> 2.0'
  gem 'sdoc', '~> 0.4.0',          group: :doc
  gem 'spring',        group: :development
  gem 'devise'
  gem 'geocoder'
  gem 'cocaine'
  gem 'paperclip'
  gem 'aws-sdk'
  gem 'friendly_id'
  gem 'haml'
  
# Enable Heroku
group :production do
  gem 'rails_12factor'
end
group :development do
  gem 'sqlite3'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'annotate', '~> 2.6.5'
end
group :development, :test do
  # I'm using this branch of jazz_hands b/c the master branch points to an old ruby debugger.
  gem 'jazz_hands', github: 'nixme/jazz_hands', branch: 'bring-your-own-debugger'
  gem 'pry-byebug', '~> 1.3.2' # behind latest version b/c jazz_hands needs pry 0.9 and this is the only way to have them not conflict.
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'better_errors'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'faker'
  gem 'launchy'
  gem 'selenium-webdriver'
end

group :assets do
  gem 'sass', '~> 3.3.11'
end
