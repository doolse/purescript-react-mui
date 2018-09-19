const clz = require('@material-ui/core/ListItem').default;
const R = require('react');
exports.listItem = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }