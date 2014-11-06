# Description:
#   Destiny actions
#

module.exports = (robot) ->

  drops = [
    ':mote_of_light:'
    ':strange_coin:'
    ':legendary_drop:'
    ':exotic_drop:'
  ]

  robot.hear /drop me/i, (msg) ->
    drop = msg.random drops

    if msg.message.user.name.toLowerCase() == 'shoff'
      drop = ':no_mas:'

    msg.send drop
