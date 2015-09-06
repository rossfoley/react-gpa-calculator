alt           = require("../alt")
CourseActions = require("../actions/CourseActions")

class CourseStore
  displayName: "CourseStore"

  constructor: ->
    @courses = []
    @lsm_gpa = 0.0
    @gpa = 0.0
    @honors = "None"
    @nextId = 1

    @bindActions(CourseActions)

  createCourse: (data) ->
    courseData =
      id: @nextId++
      name: data.name
      level: data.level
      credit: data.credit
      grade: data.grade
    @courses.push courseData

module.exports = alt.createStore(CourseStore)
