const clz = require('@material-ui/core/TableRow').default;
const R = require('react');
exports.tableRow = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }