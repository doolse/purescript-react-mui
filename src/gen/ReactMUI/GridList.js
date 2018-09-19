const clz = require('@material-ui/core/GridList').default;
const R = require('react');
exports.gridList = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }