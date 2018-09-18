const clz = require('@material-ui/core/MuiThemeProvider').default;
const R = require('react');
exports.muiThemeProvider = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }