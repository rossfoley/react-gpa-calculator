React = require('react')
ReactBootstrap = require('react-bootstrap')
Button = React.createFactory ReactBootstrap.Button

CourseActions = require('../actions/CourseActions')

{ tr, td } = React.DOM

module.exports = React.createClass
  displayName: 'CourseComponent'

  propTypes:
    course: React.PropTypes.object.isRequired

  deleteCourse: ->
    CourseActions.deleteCourse @props.course.id

  render: ->
    tr {key: @props.course.id},
      td {}, @props.course.name
      td {}, @props.course.grade
      td {}, @props.course.level
      td {}, @props.course.credit
      td {},
       Button {onClick: @deleteCourse}, 'Delete'
