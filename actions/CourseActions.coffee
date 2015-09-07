alt = require("../alt")

class CourseActions
  constructor: ->
    @generateActions "createCourse", "deleteCourse", "loadFromLocalStorage"

module.exports = alt.createActions(CourseActions)
