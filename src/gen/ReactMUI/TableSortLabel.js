const clz = require('@material-ui/core/TableSortLabel').default;
const R = require('react');
exports.tableSortLabel = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }