React = require("react")
CourseStore = require("../../stores/CourseStore")
CourseActions = require("../../actions/CourseActions")
ReactStateMagicMixin = require("../assets/vendor/ReactStateMagicMixin")

InfoComponent = React.createFactory require("./InfoComponent")
CoursesComponent = React.createFactory require('./CoursesComponent')

{ div } = React.DOM

module.exports = React.createClass
  displayName: "App"

  mixins: [ ReactStateMagicMixin ]

  statics:
    registerStore: CourseStore

  componentDidMount: ->
    # Load GPA data from localstore

  render: ->
    div {},
      InfoComponent {courses: @getState().courses}
      CoursesComponent {courses: @getState().courses}
