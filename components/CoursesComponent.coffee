React = require('react')
ReactBootstrap = require('react-bootstrap')
Table = React.createFactory ReactBootstrap.Table
CourseActions = require('../actions/CourseActions')
CourseComponent = React.createFactory require('./CourseComponent')

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
      Table {striped: true, bordered: true, condensed: true, hover: true},
        thead {},
          th {}, 'Name'
          th {}, 'Grade'
          th {}, 'Level'
          th {}, 'Credit'
        tbody {},
          @props.courses.map (course) ->
            CourseComponent {course}
      button {onClick: @newCourse}, 'New Course'
