const clz = require('@material-ui/core/OutlinedInput').default;
const R = require('react');
exports.outlinedInput = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }