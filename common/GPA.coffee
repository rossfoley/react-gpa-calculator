gpa_values = require('./GPAValues')

GPA =
  calculate: (courses, getValue) ->
    totalGpa = courses.reduce((sum, {credit, level, grade}) ->
      sum + parseInt(credit) * getValue(gpa_values[grade], level)
    , 0.0)
    totalCredits = courses.reduce((sum, {credit}) ->
      sum + parseInt(credit)
    , 0.0)
    totalGpa / totalCredits

  calculateLSMGPA: (courses) ->
    return 0.0 if courses.length is 0
    @calculate(courses, (values, level) -> values[level])

  calculateStandardGPA: (courses) ->
    return 0.0 if courses.length is 0
    @calculate(courses, (values) -> values['Standard'])

  calculateHonors: (courses) ->
    return "None" if courses.length is 0
    honorPoints = Math.round(@calculate(courses, (values) -> values['Honor']))
    if honorPoints > 9
      'High Honors'
    else if honorPoints > 8
      'Honors'
    else if honorPoints > 7
      'Honorable Mention'
    else
      'None'

module.exports = GPA
