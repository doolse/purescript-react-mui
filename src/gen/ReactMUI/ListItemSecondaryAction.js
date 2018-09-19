const clz = require('@material-ui/core/ListItemSecondaryAction').default;
const R = require('react');
exports.listItemSecondaryAction = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }