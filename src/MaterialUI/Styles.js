const ws = require('material-ui/styles').withStyles;

exports.withStyles = function () {
  return function (styleFunc) {
    return ws(styleFunc, {withTheme:true});
  }
}

exports.mediaQuery = function (name) {
  return function (mediaStyles) {
      var out = {};
      out[name] = mediaStyles;
      return out;
  }
}

exports.cssList = function (arr) {
  return Object.assign.apply(undefined, [{}].concat(arr));
}