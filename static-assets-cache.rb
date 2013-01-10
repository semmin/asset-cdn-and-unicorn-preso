# Gemfile
gem 'dalli'

# config/application.rb
config.cache_store = :dalli_store

# config/environments/production.rb
config.action_dispatch.rack_cache = {
  :metastore    => Dalli::Client.new,
  :entitystore  => 'file:tmp/cache/rack/body',
  :allow_reload => false
}
config.serve_static_assets = true
config.assets.digest = true

config.action_controller.perform_caching = true
