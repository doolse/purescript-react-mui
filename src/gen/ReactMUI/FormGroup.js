const clz = require('@material-ui/core/FormGroup').default;
const R = require('react');
exports.formGroup = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }