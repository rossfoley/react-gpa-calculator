React = require('react')
ReactBootstrap = require('react-bootstrap')
Row = React.createFactory ReactBootstrap.Row
Col = React.createFactory ReactBootstrap.Col

{ div, p, h3, dl, dt, dd } = React.DOM

module.exports = React.createClass
  displayName: 'InfoComponent'

  render: ->
    Row {},
      Col {xs: 12, md: 12},
        h3 {}, 'About'
        p {},
          'GPA Calculator makes it easy to calculate your GPA and Honor Roll Status.  After creating an account, you can enter in the information for all of your school courses.  You will then be able to see your Lewis Mills GPA, your Standardized GPA, and your Honor Roll Status.  That way, you will always be up-to-date with all of your school related statistics, allowing you to make sure that you get the best GPA possible.'
        p {},
          'This website was created with the intent of making it easy to calculate your GPA and Honor Roll Status.  While many websites provide the ability to calculate your GPA based on a standardized 4.0 scale, this website is the only one that can calculate your GPA using the weighted class rank system used at Lewis S. Mills High School.  In addition, it was designed with security and privacy in mind, so you can always know that nobody besides yourself can see your grades.'
      Col {xs: 12, md: 12},
        h3 {}, 'Frequently Asked Questions'
        dl {},
          dt {}, 'What is the difference between my Lewis Mills GPA and my Standardized GPA?'
          dd {},
            'Lewis Mills uses a weighted GPA system where the level of the course affects the value points assigned to it.  For example, in an AP course, an A+ is worth 5.3, whereas in a L1 course, it is worth 4.8.  This means that if you take higher level courses, your GPA will be higher.  The Standardized GPA uses the same value points for every course, regardless of the level.  For example, an A+ in an AP course and a L1 course are both worth 4.0.  The Standardized GPA is more universally accepted since it can work with any school or college.'
          dt {}, 'Is my Honor Roll status affected by the level of courses that I take?'
          dd {},
            'No.  Similar to the Standardized GPA, the course\'s level isn\'t taken into consideration when assigning value points for your Honor Roll status.'
          dt {}, 'What do the different values for "credit" represent?'
          dd {},
            'A course\'s "credit" represents the duration of the course.  For example, 1.0 credit course a full year (2 semester) course and a 0.5 credit course is a half year (1 semester) course.  While those 2 credits are the most commonly used ones, the remaining 2 (0.375 and 0.25) are used only for wellness courses.  Wellness courses are divided up into 2 courses: one for each semester.  In freshman and sophomore years, each semester of wellness is worth 0.375 credits.  In junior and senior years, each of semester of wellness is worth 0.25 credits.  One semester in wellness is worth less than a standard 1 semester course because wellness courses only meet 2-3 times a week, whereas a standard course meets 4 times a week.'


