const clz = require('@material-ui/core/SnackbarContent').default;
const R = require('react');
exports.snackbarContent = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }