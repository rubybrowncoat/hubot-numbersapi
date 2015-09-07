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
  robot.respond /number ([0-9]+|random)\s?(trivia|math|date|year)?$/i, (msg) ->
    msg
      .http("http://numbersapi.com/" + msg.match[1] + "/" + ( msg.match[2] || "" ))
      .get() (err, res, body) ->
        if err?
          throw err
        else
          msg.reply body

  robot.respond /number ([0-9]+)\/([0-9]+)\s?(date)?$/i, (msg) ->
    msg
      .http("http://numbersapi.com/" + msg.match[2] + "/" + msg.match[1] + "/" + ( msg.match[3] || "" ))
      .get() (err, res, body) ->
        if err?
          throw err
        else
          msg.reply body