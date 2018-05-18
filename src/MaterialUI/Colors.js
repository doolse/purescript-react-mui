var CM = require('@material-ui/core/styles/colorManipulator');
exports.fade = function (col) {
  return function (fadeBy)
  {
    return CM.fade(col, fadeBy);
  }
}
