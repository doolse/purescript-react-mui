const clz = require('@material-ui/core/Chip').default;
const R = require('react');
exports.chip = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }