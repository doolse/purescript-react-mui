const clz = require('@material-ui/core/TableCell').default;
const R = require('react');
exports.tableCell = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }