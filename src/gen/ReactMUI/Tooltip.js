const clz = require('@material-ui/core/Tooltip').default;
const R = require('react');
exports.tooltip = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }