const clz = require('@material-ui/core/InputBase').default;
const R = require('react');
exports.inputBase = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }