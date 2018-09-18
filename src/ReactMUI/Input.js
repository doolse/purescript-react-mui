const clz = require('@material-ui/core/Input').default;
const R = require('react');
exports.input = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }