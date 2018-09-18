const clz = require('@material-ui/core/GridListTile').default;
const R = require('react');
exports.gridListTile = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }