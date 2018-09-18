const clz = require('@material-ui/core/TablePaginationActions').default;
const R = require('react');
exports.tablePaginationActions = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }