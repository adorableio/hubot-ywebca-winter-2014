# Description:
#   Good Jorb!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   (jorb) - shows a Coach Z pic
#
# Author:
#   bigtiger

images = [
  "http://i1.ytimg.com/vi/qgD4OhIokjU/hqdefault.jpg"
  "http://www.hrwiki.org/w/images/thumb/f/f4/cantsayjob2.png/180px-cantsayjob2.png"
  "http://drawception.com/pub/panels/2012/11-11/Y9jtFXemfD-8.png"
  ]

module.exports = (robot) ->
  robot.hear /jorb/i, (msg) ->
    msg.send msg.random images
