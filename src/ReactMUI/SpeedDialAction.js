const clz = require('@material-ui/core/SpeedDialAction').default;
const R = require('react');
exports.speedDialAction = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }