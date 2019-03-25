# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SlackifyBoilerplate
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    Slackify.configure do |config|
      config.slack_bot_token = "xoxb-1234..."
      config.slack_secret_token = "supersecrettoken"
    end
  end
end
