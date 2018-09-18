const clz = require('@material-ui/core/Switch').default;
const R = require('react');
exports.switch = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }