const clz = require('@material-ui/core/Grid').default;
const R = require('react');
exports.grid = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }