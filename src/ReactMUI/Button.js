const clz = require('@material-ui/core/Button').default;
const R = require('react');
exports.button = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }