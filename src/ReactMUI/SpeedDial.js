const clz = require('@material-ui/core/SpeedDial').default;
const R = require('react');
exports.speedDial = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }