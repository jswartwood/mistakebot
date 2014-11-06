# Description:
#   Destiny actions
#

geis_drops = [
  ':mote_of_light:'
  ':strange_coin:'
  ':legendary_drop:'
  ':exotic_drop:'
]

drops = geis_drops.slice()
drops.push(':no_mas:')

shoff_drops = geis_drops.slice()
shoff_drops.push(':no_mas:') for x in [10..1]

geis_drops.push(':exotic_drop:')

drop_me = (msg) ->
  if msg.message.user.name.toLowerCase() == 'shoff'
    return msg.random shoff_drops

  if msg.message.user.name.toLowerCase() == 'geis'
    return msg.random geis_drops

  msg.random drops


module.exports = (robot) ->

  robot.respond /drop (.*)/i, (msg) ->
    times = parseInt(msg.match[1]) || 1

    msg.send drop_me(msg) for x in [1..times]
