# frozen_string_literal: true

class SlashCommandHandler < Slackify::Handlers::Base
  allow_slash_method :slash_command

  class << self
    def slash_command(_params)
      "You just called the slash command"
    end
  end
end
