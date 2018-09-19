const clz = require('@material-ui/core/Snackbar').default;
const R = require('react');
exports.snackbar = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }