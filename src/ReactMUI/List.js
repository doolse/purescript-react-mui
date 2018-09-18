const clz = require('@material-ui/core/List').default;
const R = require('react');
exports.list = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }