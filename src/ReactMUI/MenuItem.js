const clz = require('@material-ui/core/MenuItem').default;
const R = require('react');
exports.menuItem = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }