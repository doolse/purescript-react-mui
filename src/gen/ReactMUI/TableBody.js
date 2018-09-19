const clz = require('@material-ui/core/TableBody').default;
const R = require('react');
exports.tableBody = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }