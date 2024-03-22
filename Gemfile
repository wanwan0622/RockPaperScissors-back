source "https://rubygems.org"

ruby "3.2.2"

gem "rails", "~> 6.0"
group :development do
  gem "sqlite3", "~> 1.4"
end
group :production do
  gem "pg"
end
gem "puma", ">= 5.0"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem "rack-cors"
gem 'devise'
gem 'devise_token_auth'
gem 'devise-i18n'
group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
end

group :development do
end

gem "dockerfile-rails", ">= 1.6", :group => :development
