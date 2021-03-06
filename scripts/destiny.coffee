# Description:
#   Destiny actions
#

# If you are seeing this, the joke is probably old now.
# Replace all the code below to just give out random "drops"...
# nothing special for geis or shoff.

geis_drops = [
  ':mote_of_light:'
  ':strange_coin:'
  ':legendary_drop:'
  ':exotic_drop:'
]

bad_drop = null

drops = geis_drops.slice()
drops.push(bad_drop)

shoff_drops = geis_drops.slice()
shoff_drops.push(bad_drop) for x in [5..1]

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

    for x in [1..times]
      drop = drop_me msg
      msg.send(drop) if drop?
