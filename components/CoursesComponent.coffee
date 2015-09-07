React = require('react')
ReactBootstrap = require('react-bootstrap')
Table = React.createFactory ReactBootstrap.Table
CourseActions = require('../actions/CourseActions')
CourseComponent = React.createFactory require('./CourseComponent')
Button = React.createFactory ReactBootstrap.Button

{ div, tr, td, th, thead, tbody, button, h2 } = React.DOM

module.exports = React.createClass
  displayName: 'CoursesComponent'

  propTypes:
    courses: React.PropTypes.array.isRequired

  newCourse: ->
    CourseActions.createCourse(
      name: 'Test Course'
      grade: 'A+'
      level: 'AP'
      credit: 1.0
    )

  render: ->
    div {},
      h2 {}, 'Courses'
      Table {striped: true, hover: true},
        thead {},
          th {}, 'Name'
          th {}, 'Grade'
          th {}, 'Level'
          th {}, 'Credit'
          th {}, ''
        tbody {},
          @props.courses.map (course) ->
            CourseComponent {course}
      Button {onClick: @newCourse}, 'New Course'
