# frozen_string_literal: true

class CoinFlipHandler < Slackify::Handlers::Base
  class << self
    def coin_flip_message(params)
      coin_value = ['heads', 'tails'].sample
      slack_client.chat_postMessage(
        as_user: true,
        channel: params[:event][:user],
        attachments: [{
          "fallback": coin_value,
          "title": coin_value,
          "callback_id": "coin_flip_handler#coin_flip_interactive",
          "color": "#3AA3E3",
          "attachment_type": "default",
          "actions": [
            {
              "name": "flip",
              "text": "flip again",
              "type": "button",
              "value": "flip"
            }
          ]
        }]
      )
    end

    def coin_flip_interactive(_params)
      coin_value = ['heads', 'tails'].sample
      {
        attachments: [{
          "fallback": coin_value,
          "title": coin_value,
          "callback_id": "coin_flip_handler#coin_flip_interactive",
          "color": "#3AA3E3",
          "attachment_type": "default",
          "actions": [
            {
              "name": "flip",
              "text": "flip again",
              "type": "button",
              "value": "flip"
            }
          ]
        }]
      }
    end
  end
end
