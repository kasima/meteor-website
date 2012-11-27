Template.blog.something = ->
  "SOMETHING!"

Template.blog.events({
  'click .btn': ->
    OurDate.insert({date: Date.now()})
})
