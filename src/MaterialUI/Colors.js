var CM = require('material-ui/styles/colorManipulator');
exports.fade = function (col) {
  return function (fadeBy)
  {
    return CM.fade(col, fadeBy);
  }
}
