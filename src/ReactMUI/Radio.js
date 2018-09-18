const clz = require('@material-ui/core/Radio').default;
const R = require('react');
exports.radio = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }