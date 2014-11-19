module.exports = (robot) ->
  robot.respond /jaden said what\b/i, (msg) ->
     jaden(msg)

  robot.respond /willow said what\b/i, (msg) ->
      willow(msg)

    jaden = (msg) ->
      msg.http("http://212.47.237.159/jaden")
       .get() (err, res, body) ->
          msg.send body

    willow = (msg) ->
      msg.http("http://212.47.237.159/willow")
       .get() (err, res, body) ->
          msg.send body
