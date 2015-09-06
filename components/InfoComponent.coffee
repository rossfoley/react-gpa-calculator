React = require("react")
GPA = require('../common/GPA')

{ div } = React.DOM

module.exports = React.createClass
  displayName: "InfoComponent"

  render: ->
    div {},
      "Info Component"
      div {}, GPA.calculateLSMGPA(@props.courses)
      div {}, GPA.calculateStandardGPA(@props.courses)
      div {}, GPA.calculateHonors(@props.courses)
