require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Education
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.active_storage.variant_processor = :mini_magick

    config.active_storage.analyzers = 
    [ActiveStorage::Analyzer::ImageAnalyzer::Vips,
    ActiveStorage::Analyzer::ImageAnalyzer::ImageMagick,
    ActiveStorage::Analyzer::VideoAnalyzer,
    ActiveStorage::Analyzer::AudioAnalyzer]

    config.active_storage.previewers = 
    [ActiveStorage::Previewer::PopplerPDFPreviewer,
    ActiveStorage::Previewer::MuPDFPreviewer,
    ActiveStorage::Previewer::VideoPreviewer]

  end
end
