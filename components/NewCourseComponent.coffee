React = require('react')
ReactBootstrap = require('react-bootstrap')
BootstrapModal = require('react-bootstrap-modal')

Modal       = React.createFactory BootstrapModal
ModalHeader = React.createFactory BootstrapModal.Header
ModalTitle  = React.createFactory BootstrapModal.Title
ModalBody   = React.createFactory BootstrapModal.Body
ModalFooter = React.createFactory BootstrapModal.Footer
Button      = React.createFactory ReactBootstrap.Button
Thumbnail   = React.createFactory ReactBootstrap.Thumbnail
Grid        = React.createFactory ReactBootstrap.Grid
Row         = React.createFactory ReactBootstrap.Row
Col         = React.createFactory ReactBootstrap.Col
Input       = React.createFactory ReactBootstrap.Input

{ div, form, option } = React.DOM

CourseActions = require('../actions/CourseActions')

LEVELS = ['AP', 'L1', 'L2']
GRADES = ['A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'D+', 'D', 'D-', 'F']
CREDITS = [1.0, 0.5, 0.375, 0.25]

module.exports = React.createClass
  displayName: 'NewCourseComponent'

  getInitialState: ->
    showModal: false
    name: ''
    grade: 'A+'
    level: 'AP'
    credit: '1.0'

  closeModal: ->
    @setState showModal: false

  showModal: ->
    @setState showModal: true

  setName: (e) -> @setState name: e.target.value
  setGrade: (e) -> @setState grade: e.target.value
  setLevel: (e) -> @setState level: e.target.value
  setCredit: (e) -> @setState credit: e.target.value

  saveCourse: ->
    CourseActions.createCourse(
      name: @state.name
      grade: @state.grade
      level: @state.level
      credit: @state.credit
    )
    @closeModal()

  generateOptions: (values) ->
    values.map (value) ->
      option {value}, value

  render: ->
    div {},
      Button {onClick: @showModal}, 'New Course'
      Modal {show: @state.showModal, onHide: @closeModal, className: 'course-modal'},
        ModalHeader {closeButton: true},
          ModalTitle {}, 'Create New Course'
        ModalBody {},
          form {},
            Input
              type: 'text'
              label: 'Name'
              onChange: @setName
              value: @state.name
            Input
              type: 'select'
              label: 'Grade'
              onChange: @setGrade
              value: @state.grade,
              @generateOptions(GRADES)
            Input
              type: 'select'
              label: 'Level'
              onChange: @setLevel
              value: @state.level,
              @generateOptions(LEVELS)
            Input
              type: 'select'
              label: 'Credit'
              onChange: @setCredit
              value: @state.credit,
              @generateOptions(CREDITS)
        ModalFooter {},
          Button {onClick: @saveCourse, bsStyle: 'primary'}, 'Save'
          Button {onClick: @closeModal}, 'Cancel'
