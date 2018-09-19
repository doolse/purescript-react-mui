const clz = require('@material-ui/core/FilledInput').default;
const R = require('react');
exports.filledInput = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }