alt           = require('../alt')
CourseActions = require('../actions/CourseActions')
_             = require('underscore')

class CourseStore
  displayName: 'CourseStore'

  constructor: ->
    @courses = []
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
    @save()
    
  deleteCourse: (id) ->
    @courses = _.reject(@courses, (course) -> course.id is id)
    @save()

  loadFromLocalStorage: ->
    @courses = JSON.parse(localStorage.getItem 'courses')
    @nextId = parseInt(localStorage.getItem 'nextId')

  save: ->
   localStorage.setItem 'courses', JSON.stringify(@courses)
   localStorage.setItem 'nextId', @nextId

module.exports = alt.createStore(CourseStore)
