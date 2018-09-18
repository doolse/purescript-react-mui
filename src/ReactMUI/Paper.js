const clz = require('@material-ui/core/Paper').default;
const R = require('react');
exports.paper = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }