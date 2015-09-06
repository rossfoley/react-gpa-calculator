React = require('react')
ReactBootstrap = require('react-bootstrap')
CourseStore = require('../stores/CourseStore')
CourseActions = require('../actions/CourseActions')
ReactStateMagicMixin = require('../assets/vendor/ReactStateMagicMixin')

InfoComponent = React.createFactory require('./InfoComponent')
CoursesComponent = React.createFactory require('./CoursesComponent')

Grid = React.createFactory ReactBootstrap.Grid
Row = React.createFactory ReactBootstrap.Row
Col = React.createFactory ReactBootstrap.Col

Navbar = React.createFactory ReactBootstrap.Navbar
Nav = React.createFactory ReactBootstrap.Nav
NavItem = React.createFactory ReactBootstrap.NavItem

{ div } = React.DOM

module.exports = React.createClass
  displayName: 'App'

  mixins: [ ReactStateMagicMixin ]

  statics:
    registerStore: CourseStore

  componentDidMount: ->
    # Load GPA data from localstore

  render: ->
    div {},
      Navbar {brand: 'GPA Calculator', id: 'main-nav'},
        Nav {},
          NavItem {eventKey: 1, href: '#'}, 'Home'
          NavItem {eventKey: 1, href: '#'}, 'About'
          NavItem {eventKey: 1, href: '#'}, 'FAQ'
      Grid {id: 'container'},
        Row {},
          Col {xs: 12, md: 4},
            InfoComponent {courses: @state.courses}
          Col {xs: 12, md: 8},
            CoursesComponent {courses: @state.courses}
