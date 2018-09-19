const clz = require('@material-ui/core/Backdrop').default;
const R = require('react');
exports.backdrop = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }