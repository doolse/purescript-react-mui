const Styles = require('@material-ui/core/styles');

exports.withStyles = function () {
  return function (styleFunc) {
    return Styles.withStyles(styleFunc, {withTheme:true});
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

exports.createMuiTheme = function(t) {
  return Styles.createMuiTheme(t);
}

exports.muiThemeProviderClass = Styles.MuiThemeProvider;