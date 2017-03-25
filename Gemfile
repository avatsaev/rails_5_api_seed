source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'

gem 'omniauth', '~> 1.5'
gem 'devise_token_auth', '~> 0.1'
gem 'rack-cors', :require => 'rack/cors'
gem 'rack-attack', '~> 5.0'
gem 'active_model_serializers', '~> 0.10'
gem 'state_machines-activerecord'
gem "paperclip", "~> 5.0.0"
gem 'acts-as-taggable-on', '~> 4.0'
gem 'aws-sdk', '~> 2.3.0'
gem 'configatron'
gem 'ransack', github: 'activerecord-hackery/ransack'
gem 'friendly_id', '~> 5.1.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails', '~> 4.5'
  gem 'database_cleaner', '~> 1.5', '>= 1.5.1'
  gem 'webmock', '~> 1.24', '>= 1.24.2'
  gem 'shoulda'
  gem 'shoulda-matchers'
  gem 'shoulda-context'
  gem 'state_machines_rspec'
  gem "simplecov"
  gem "simplecov-rcov"
  gem 'rails-controller-testing'
  gem 'byebug', platform: :mri
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'pry-rails'
  gem 'sextant'
  gem 'railroady'
  gem 'spring'
  gem 'apipie-rails'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
  gem 'rack-mini-profiler', '~> 0.10'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
