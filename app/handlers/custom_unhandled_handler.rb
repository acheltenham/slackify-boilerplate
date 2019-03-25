# frozen_string_literal: true

class CustomUnhandledHandler < Slackify::Handlers::Base
  def self.unhandled(params)
    slack_client.chat_postMessage(
      as_user: true,
      channel: params[:event][:user],
      text: "Sorry, I didn't understand what you just said",
    )
  end
end
