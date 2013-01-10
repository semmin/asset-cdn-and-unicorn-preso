# Gemfile
gem "asset_sync" # will push compiled assets into CDN

# Command line
heroku config:add FOG_PROVIDER=AWS \
		  AWS_ACCESS_KEY_ID=xxx \
		  AWS_SECRET_ACCESS_KEY=yyy

heroku config:add FOG_DIRECTORY=yourappname-assets

# config/environments/production.rb
config.action_controller.asset_host = "https://#{ENV['FOG_DIRECTORY']}.s3.amazonaws.com"

# make sure to use AssetTagHelper methods (like image_tag)
# to ensure assets are properly referenced
