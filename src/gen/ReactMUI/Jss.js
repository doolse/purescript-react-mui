const clz = require('@material-ui/core/Jss').default;
const R = require('react');
exports.jss = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }