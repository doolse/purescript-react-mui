const clz = require('@material-ui/core/Step').default;
const R = require('react');
exports.step = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }