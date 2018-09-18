const clz = require('@material-ui/core/ListItemIcon').default;
const R = require('react');
exports.listItemIcon = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }