const clz = require('@material-ui/core/TextField').default;
const R = require('react');
exports.textField = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }