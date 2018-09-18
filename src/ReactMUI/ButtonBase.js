const clz = require('@material-ui/core/ButtonBase').default;
const R = require('react');
exports.buttonBase = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }