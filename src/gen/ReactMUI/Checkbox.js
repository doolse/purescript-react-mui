const clz = require('@material-ui/core/Checkbox').default;
const R = require('react');
exports.checkbox = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }