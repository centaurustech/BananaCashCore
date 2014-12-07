source 'https://rubygems.org'
ruby '2.1.2'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.5'
# Use sqlite3 as the database for Active Record
# Use sqlite3 as the database for Active Record
gem 'sqlite3',	group: :development

gem 'pg', group: :production
gem 'rails_12factor', group: :production

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.0'

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

group :development, :test do
	#includes RSpec itself in a wrapper to add some extra Rails specific features
	gem 'rspec-rails', '~> 3.1.0'
	#replaces Rails default fixtures for feeding test data to the test suite with much more preferable factories
	gem 'factory_girl_rails', '~> 4.4.1'
	gem 'jasmine'
end

group :test do
	#generates names, email addresses, and other placeholders for factories.
	gem 'faker', '~> 1.4.3'
	#makes it easy to programatically simulate your users interactions with your web application
	gem 'capybara', '~> 2.4.3'
	#helps make sure each spec run in RSpec begins with a clean slate, by–you guessed it–cleaning data from the test database.
	gem 'database_cleaner', '~> 1.3.0'
	#does one thing, but does it well: It opens your default web browser on demand to show you what your application is rendering. Very useful for debugging tests.
	gem 'launchy', '~> 2.4.2'
	#will let us test JavaScript-based browser interactions with Capybara.
	gem 'selenium-webdriver', '~> 2.43.0'
	gem "shoulda-matchers"
end

# Para templates
gem 'haml-rails'
gem 'html2haml'
gem 'simple_form'

# Para login y creacion de usuarios
gem 'devise'
gem 'cancan'
gem 'rolify'

#Api gems
gem 'active_model_serializers'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

