if Meteor.isClient
  ourDateId = OurDate.findOne({})
  if ourDateId == undefined
    ourDateId = OurDate.insert {date: Date.now()}

  Meteor.Router.add
    '/':      'index'
    '/about': 'about'
    '/blog':  'blog'

  Template.hello.greeting = ->
    "Welcome to website."

  Template.hello.events
    'click input': ->
      # template data, if any, is available in 'this'
      if typeof console != 'undefined'
        console.log "You pressed the button"

if Meteor.isServer
  Meteor.startup ->
    # code to run on server at startup
