const clz = require('@material-ui/core/SpeedDialIcon').default;
const R = require('react');
exports.speedDialIcon = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }