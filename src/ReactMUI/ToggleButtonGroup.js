const clz = require('@material-ui/core/ToggleButtonGroup').default;
const R = require('react');
exports.toggleButtonGroup = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }