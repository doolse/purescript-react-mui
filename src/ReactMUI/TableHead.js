const clz = require('@material-ui/core/TableHead').default;
const R = require('react');
exports.tableHead = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }