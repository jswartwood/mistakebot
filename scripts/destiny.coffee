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


drop_me = (msg) ->
  msg.random drops

  if msg.message.user.name.toLowerCase() == 'shoff'
    msg.random shoff_drops

  if msg.message.user.name.toLowerCase() == 'geis'
    msg.random geis_drops

module.exports = (robot) ->

  robot.respond /drop (.*)/i, (msg) ->
    times = Number(msg.match[1]) || 1

    while times -= 1
      msg.send drop_me(msg)
