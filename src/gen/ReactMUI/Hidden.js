const clz = require('@material-ui/core/Hidden').default;
const R = require('react');
exports.hidden = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }