const clz = require('@material-ui/core/TablePagination').default;
const R = require('react');
exports.tablePagination = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }