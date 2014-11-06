# Description:
#   Destiny actions
#

module.exports = (robot) ->

  geis_drops = [
    ':mote_of_light:'
    ':strange_coin:'
    ':legendary_drop:'
    ':exotic_drop:'
  ]

  drops = geis_drops.slice()
  drops.push(':no_mas:')

  shoff_drops = geis_drops.slice()
  shoff_drops.push(':no_mas:') for num in [10..1]

  robot.hear /drop me/i, (msg) ->
    drop = msg.random drops

    if msg.message.user.name.toLowerCase() == 'shoff'
      drop = msg.random shoff_drops

    if msg.message.user.name.toLowerCase() == 'geis'
      drop = msg.random geis_drops

    msg.send drop
