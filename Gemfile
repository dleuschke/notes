source 'https://rubygems.org'
ruby '2.3.1'

gem 'rails', '>= 5.0.0.rc1', '< 5.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'

gem 'active_model_serializers'
gem 'jwt'

gem 'devise'
gem 'pundit'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'rack-cors'
gem 'rack-attack'

gem 'geokit-rails'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '3.1.0'
  gem 'factory_girl_rails'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
