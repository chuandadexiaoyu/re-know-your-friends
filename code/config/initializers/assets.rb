# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( base.css )
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( form-submit.js )
Rails.application.config.assets.precompile += %w( background-parallax.js )
Rails.application.config.assets.precompile += %w( page-script.js )
Rails.application.config.assets.precompile += %w( jquery.min.js )
Rails.application.config.assets.precompile += %w( noframework.waypoints.min.js )
Rails.application.config.assets.precompile += %w( responsive-nav.min.js )
Rails.application.config.assets.precompile += %w( idangerous.swiper.min.js )
Rails.application.config.assets.precompile += %w( reveal-animation.js )
Rails.application.config.assets.precompile += %w( webfont.js )
Rails.application.config.assets.precompile += %w( fontloader.js )
