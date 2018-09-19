const clz = require('@material-ui/core/Injected').default;
const R = require('react');
exports.injected = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }