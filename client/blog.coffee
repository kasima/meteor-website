Template.blog.something = ->
  OurDate.findOne().date

Template.blog.events({
  'click .btn': ->
    console.log "updating"
    OurDate.update(ourDateId,
      $set:
        date: Date.now()
    )
})
