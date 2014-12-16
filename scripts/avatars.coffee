# Description:
#   Adorable Avatars
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   /(avatar)( me)? (.*)/i - adorable avatar
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
  robot.respond /(avatar)( me)? (.*)/i, (msg) ->
    id = encodeURIComponent(msg.match[3])
    url = "http://avatars-staging.herokuapp.com/avatar/#{id}.png"
    msg.send(url)

imageMe = (msg, query, animated, faces, cb) ->
  cb = animated if typeof animated == 'function'
  cb = faces if typeof faces == 'function'
  q = v: '1.0', rsz: '8', q: query, safe: 'active'
  q.imgtype = 'animated' if typeof animated is 'boolean' and animated is true
  q.imgtype = 'face' if typeof faces is 'boolean' and faces is true
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(q)
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData?.results
      if images?.length > 0
        image  = msg.random images
        cb "#{image.unescapedUrl}#.png"

