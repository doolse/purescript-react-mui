const clz = require('@material-ui/core/ListItemText').default;
const R = require('react');
exports.listItemText = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }