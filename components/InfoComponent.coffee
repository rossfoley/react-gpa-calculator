React = require("react")

{div} = React.DOM

module.exports = React.createClass
  displayName: "InfoComponent"

  render: ->
    div {},
      "Info Component"
