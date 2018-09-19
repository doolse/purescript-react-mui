const clz = require('@material-ui/core/Popover').default;
const R = require('react');
exports.popover = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }