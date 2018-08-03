var CM = require('@material-ui/core/styles/colorManipulator');
exports.fade = function (col) {
  return function (fadeBy)
  {
    return CM.fade(col, fadeBy);
  }
}

exports.red = require('@material-ui/core/colors/red').default;

exports.blue = require('@material-ui/core/colors/blue').default;

exports.amber = require('@material-ui/core/colors/amber').default

exports.blueGrey = require('@material-ui/core/colors/blueGrey').default

exports.brown = require('@material-ui/core/colors/brown').default

exports.cyan = require('@material-ui/core/colors/cyan').default

exports.deepOrange = require('@material-ui/core/colors/deepOrange').default

exports.deepPurple = require('@material-ui/core/colors/deepPurple').default

exports.green = require('@material-ui/core/colors/green').default

exports.grey = require('@material-ui/core/colors/grey').default

exports.indigo = require('@material-ui/core/colors/indigo').default

exports.lightBlue = require('@material-ui/core/colors/lightBlue').default

exports.lightGreen = require('@material-ui/core/colors/lightGreen').default

exports.lime = require('@material-ui/core/colors/lime').default

exports.orange = require('@material-ui/core/colors/orange').default

exports.pink = require('@material-ui/core/colors/pink').default

exports.purple = require('@material-ui/core/colors/purple').default

exports.teal = require('@material-ui/core/colors/teal').default

exports.yellow = require('@material-ui/core/colors/yellow').default