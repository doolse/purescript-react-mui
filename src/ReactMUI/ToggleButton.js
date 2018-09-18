const clz = require('@material-ui/core/ToggleButton').default;
const R = require('react');
exports.toggleButton = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }