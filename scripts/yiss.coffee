# Description:
#   Aww, Yiss
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   (yiss|aw{1,6}\,? yiss) - replies with the aww yiss duck
#
# Author:
#   itsthatguy (itg)

images = [
  "http://fc08.deviantart.net/fs71/f/2012/336/3/4/aw_yiss_by_salvador_rudy-d5mss1s.png"
  "http://4.bp.blogspot.com/-b98z0OZ27n0/Ubdh-6XqLNI/AAAAAAAAD08/F8lhEsRfujU/s1600/aww-yiss.png"
  "http://i.imgur.com/uoYaC.png"
  "http://picture-cdn.wheretoget.it/mzu0v7-i.jpg"
  "https://pbs.twimg.com/profile_images/2719960215/fd3daa48e156f69db17baa090e29e6b1.jpeg"
  "http://i237.photobucket.com/albums/ff28/beatonna/comic2.jpg"
  "http://media3.giphy.com/media/WtB30FK8vg1va/giphy.gif"
  ]

module.exports = (robot) ->
  robot.hear /(yiss|aw{1,6}\,? yiss)\b/i, (msg) ->
    msg.send msg.random images
