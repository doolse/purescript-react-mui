const clz = require('@material-ui/core/Table').default;
const R = require('react');
exports.table = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }