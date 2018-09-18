const clz = require('@material-ui/core/Dialog').default;
const R = require('react');
exports.dialog = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }