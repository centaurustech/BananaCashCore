require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BananaCash
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    config.generators do |g|
      g.test_framework :rspec, fixtures: true, #specifies to generate a fixture for each model (using a FactoryGirl factory, instead of an actual fixture)
        view_specs: false, # false says to skip generating view specs. I won’t cover them in this book; instead we’ll use feature specs to test interface elements.
        helper_specs: false, # skips generating specs for the helper files Rails generates with each controller. As your comfort level with RSpec improves, consider changing this option to true and testing these files.
        stylesheets: false,
        javascript: false,
        routing_specs: false, # omits a spec file for your config/routes.rb file. If your application is simple, as the one in this book will be, you’re probably safe skipping these specs. As your application grows, however, and takes on more complex routing, it’s a good idea to incorporate routing specs.
        controller_specs: true,
        request_specs: false # false skips RSpec’s defaults for adding integration-level specs in spec/requests. We’ll cover this in chapter 8, at which time we’ll just create our own files.
      g.fixture_replacement :factory_girl, dir: "spec/factories" # tells Rails to generate factories instead of fixtures, and to save them in the spec/factories directory.
    end

    config.autoload_paths += %W(\#{config.root}/lib)
  end
end
