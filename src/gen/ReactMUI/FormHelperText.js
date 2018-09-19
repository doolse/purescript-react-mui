const clz = require('@material-ui/core/FormHelperText').default;
const R = require('react');
exports.formHelperText = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }