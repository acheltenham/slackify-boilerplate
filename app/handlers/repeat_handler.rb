# frozen_string_literal: true

class RepeatHandler < Slackify::Handlers::Base
  class << self
    def repeat(params)
      slack_client.chat_postMessage(
        as_user: true,
        channel: params[:event][:user],
        text: "you just said: #{params[:command_arguments][:sentence]}",
      )
    end
  end
end
