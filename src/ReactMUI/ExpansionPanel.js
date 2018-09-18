const clz = require('@material-ui/core/ExpansionPanel').default;
const R = require('react');
exports.expansionPanel = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }