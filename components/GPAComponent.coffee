React = require('react')
ReactBootstrap = require('react-bootstrap')
GPA = require('../common/GPA')
Table = React.createFactory ReactBootstrap.Table

{ div, tr, td, tbody, h2 } = React.DOM

module.exports = React.createClass
  displayName: 'GPAComponent'

  propTypes:
    courses: React.PropTypes.array.isRequired

  render: ->
    div {},
      h2 {}, 'GPA Summary'
      Table {},
        tbody {},
          tr {},
            td {}, 'Lewis Mills GPA'
            td {}, GPA.calculateLSMGPA(@props.courses)
          tr {},
            td {}, 'Standard GPA'
            td {}, GPA.calculateStandardGPA(@props.courses)
          tr {},
            td {}, 'Honor Status'
            td {}, GPA.calculateHonors(@props.courses)
