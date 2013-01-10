# Gemfile
gem 'unicorn'

# Procfile
web: bundle exec unicorn -p $PORT -c ./config/unicorn.rb

# config/application.rb
config.logger = Logger.new(STDOUT)

# alos, add config/unicorn.rb
