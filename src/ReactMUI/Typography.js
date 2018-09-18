const clz = require('@material-ui/core/Typography').default;
const R = require('react');
exports.typography = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }