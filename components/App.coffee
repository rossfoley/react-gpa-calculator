React = require('react')
ReactBootstrap = require('react-bootstrap')
CourseStore = require('../stores/CourseStore')
CourseActions = require('../actions/CourseActions')
ReactStateMagicMixin = require('../assets/vendor/ReactStateMagicMixin')

GPAComponent = React.createFactory require('./GPAComponent')
CoursesComponent = React.createFactory require('./CoursesComponent')
InfoComponent = React.createFactory require('./InfoComponent')

Grid = React.createFactory ReactBootstrap.Grid
Row = React.createFactory ReactBootstrap.Row
Col = React.createFactory ReactBootstrap.Col
Navbar = React.createFactory ReactBootstrap.Navbar

{ div } = React.DOM

module.exports = React.createClass
  displayName: 'App'

  mixins: [ ReactStateMagicMixin ]

  statics:
    registerStore: CourseStore

  componentDidMount: ->
    if localStorage.getItem('courses') and localStorage.getItem('nextId')
      CourseActions.loadFromLocalStorage()

  render: ->
    div {},
      Navbar {brand: 'GPA Calculator', id: 'main-nav'}
      Grid {id: 'container'},
        Row {id: 'main-row'},
          Col {xs: 12, md: 4},
            GPAComponent {courses: @state.courses}
          Col {xs: 12, md: 8},
            CoursesComponent {courses: @state.courses}
        InfoComponent {}
