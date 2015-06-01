# Description:
#   Get an interesting facts about numbers
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   numbersapi
#
# Author:
#   Víctor San Martín

module.exports = (robot) ->
  robot.respond /numbersapi ([0-9])/i, (msg) ->
    msg
      .http("http://numbersapi.com/" + msg.match[1])
      .get() (err, res, body) ->
        if err?
          throw err
        else
          msg.send body