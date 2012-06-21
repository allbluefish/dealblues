source 'http://rubygems.org'

gem 'rails', '3.0.9'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#gem 'mysql'

# If you use a different database in development, hide it from Cloud Foundry
group :development do
  gem 'mysql'
end

# Rails 3.0 requires version less than 0.3 of mysql2 gem
group :production do
  gem 'mysql'
  #gem 'mysql2', '< 0.3'
end

gem 'will_paginate', '~> 3.0'

gem "rufus-scheduler", "~> 2.0.16"

gem 'nokogiri'

#gem "thin", "~> 1.3.1"

#gem "eventmachine", "~> 0.12.10"

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end
