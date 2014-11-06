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
    msg.send msg.random drops
