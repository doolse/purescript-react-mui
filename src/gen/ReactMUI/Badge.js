const clz = require('@material-ui/core/Badge').default;
const R = require('react');
exports.badge = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }