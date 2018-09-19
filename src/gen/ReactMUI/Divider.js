const clz = require('@material-ui/core/Divider').default;
const R = require('react');
exports.divider = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }