const ws = require('material-ui/styles').withStyles;

exports.withStyles = function () {
  return function (styleFunc) {
    return ws(styleFunc, {withTheme:true});
  }
}

exports.mediaQuery = function (name) {
  return function (mediaStyles) {
    return function (other) {
      var out = Object.assign({}, other);
      out[name] = mediaStyles;
      return out;
    }
  }
}
