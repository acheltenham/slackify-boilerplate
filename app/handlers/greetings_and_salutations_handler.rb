# frozen_string_literal: true

class GreetingsAndSalutationsHandler < Slackify::Handlers::Base
  class << self
    def greetings(params)
      slack_client.chat_postMessage(
        as_user: true,
        channel: params[:event][:user],
        text: "Hi there 👋",
      )
    end

    def salutations(params)
      slack_client.chat_postMessage(
        as_user: true,
        channel: params[:event][:user],
        text: "Bye 👋",
      )
    end
  end
end
