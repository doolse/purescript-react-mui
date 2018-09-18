const clz = require('@material-ui/core/Collapse').default;
const R = require('react');
exports.collapse = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }