const clz = require('@material-ui/core/Menu').default;
const R = require('react');
exports.menu = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }