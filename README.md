# Slackify Boilerplate

Slack + Rails = ❤

This is a small slack bot app to demonstrate how [slackify](https://github.com/jusleg/slackify) works. It has four [message handlers](https://github.com/jusleg/slackify-boilerplate/blob/master/config/handlers.yml):

1. Greetings: say `hi` and it will reply `Hi there 👋`
2. Salutations: say `bye` and the bot will reply `Bye 👋`
3. Coin flip: say `coinflip` and it will flip a coin
4. Repeat: example of capture group. Say `repeat [something]` and it will reply: `you just said: [something]`

It also has a [slash command handler](https://github.com/jusleg/slackify-boilerplate/blob/master/app/handlers/slash_command_handler.rb).

To receive events, send them to `/slackify/event` and `/slackify/interactive`

For more info about slackify, head over to the [official documentation](https://jusleg.com/slackify)
