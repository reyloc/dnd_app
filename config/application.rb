# frozen_string_literal: true

require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module DndApp
  # Application config
  class Application < Rails::Application
    config.middleware.insert_before(Rack::Sendfile, Rack::Deflater)
    config.load_defaults 5.2
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
  end
end
