React = require("react")
ReactBootstrap = require('react-bootstrap')

{ div, li } = React.DOM

module.exports = React.createClass
  displayName: "CoursesComponent"

  render: ->
    @props.courses.map (course) ->
      div {},
        li {}, course.name
        li {}, course.grade
        li {}, course.level
        li {}, course.credit
