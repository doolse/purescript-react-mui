const clz = require('@material-ui/core/NotchedOutline').default;
const R = require('react');
exports.notchedOutline = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }