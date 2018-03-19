# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.

# Configuring App to look at Bower and NPM locations.
#Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'components', 'node_modules')


# Precompile additional assets.
# application.js, application.scss, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
#Rails.application.config.assets.precompile += %w( jquery/dist/jquery.min.js bootstrap/dist/js/bootstrap.min.js fastclick/lib/fastclick.js admin-lte/dist/js/adminlte.min.js )

Rails.application.config.assets.precompile += %w( application_back.css application_back.js )
