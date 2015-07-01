require 'bundler'

# Load gems listed in the Gemfile.

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __FILE__)
Bundler.setup

# Setup code autoloading
APP_PATH = File.expand_path('../../', __FILE__)

require 'active_support/dependencies'
ActiveSupport::Dependencies.autoload_paths += Dir.glob File.join(APP_PATH, 'src')
ActiveSupport::Dependencies.mechanism = :require
