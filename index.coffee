React  = require("react")
App    = require("./components/App")

require("./assets/vendor/bootstrap/stylesheets/_bootstrap.scss")
require("./assets/stylesheets/general.scss")

React.render(App({}), document.getElementById('react-root'))
