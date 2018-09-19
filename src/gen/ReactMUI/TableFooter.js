const clz = require('@material-ui/core/TableFooter').default;
const R = require('react');
exports.tableFooter = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }