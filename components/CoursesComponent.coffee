React = require("react")
ReactBootstrap = require('react-bootstrap')
Table = React.createFactory ReactBootstrap.Table
CourseActions = require('../actions/CourseActions')

{ div, tr, td, th, thead, tbody, button } = React.DOM

module.exports = React.createClass
  displayName: "CoursesComponent"

  newCourse: ->
    CourseActions.createCourse(
      name: "Test Course"
      grade: "A+"
      level: "AP"
      credit: 1.0
    )

  render: ->
    div {},
      button {onClick: @newCourse}, "New Course"
      Table {striped: true, bordered: true, condensed: true, hover: true},
        thead {},
          th {}, 'Name'
          th {}, 'Grade'
          th {}, 'Level'
          th {}, 'Credit'
        tbody {},
          @props.courses.map (course) ->
            tr {key: course.id},
              td {}, course.name
              td {}, course.grade
              td {}, course.level
              td {}, course.credit
