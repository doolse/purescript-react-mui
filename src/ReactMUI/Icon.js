const clz = require('@material-ui/core/Icon').default;
const R = require('react');
exports.icon = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }