alt = require("../alt")

class CourseActions
  constructor: ->
    @generateActions "createCourse"

  loadFromLocalStore: ->
    # do stuff here

module.exports = alt.createActions(CourseActions)
