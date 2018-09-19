const clz = require('@material-ui/core/CssBaseline').default;
const R = require('react');
exports.cssBaseline = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }