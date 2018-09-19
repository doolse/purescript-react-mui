const clz = require('@material-ui/core/GridListTileBar').default;
const R = require('react');
exports.gridListTileBar = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }