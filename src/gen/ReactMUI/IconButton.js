const clz = require('@material-ui/core/IconButton').default;
const R = require('react');
exports.iconButton = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }