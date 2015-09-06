React = require('react')

{ tr, td } = React.DOM

module.exports = React.createClass
  displayName: 'CourseComponent'

  propTypes:
    course: React.PropTypes.object.isRequired

  render: ->
    tr {key: @props.course.id},
      td {}, @props.course.name
      td {}, @props.course.grade
      td {}, @props.course.level
      td {}, @props.course.credit
