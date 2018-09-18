const clz = require('@material-ui/core/Card').default;
const R = require('react');
exports.card = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }