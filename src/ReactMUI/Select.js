const clz = require('@material-ui/core/Select').default;
const R = require('react');
exports.select = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }