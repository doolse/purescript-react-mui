const clz = require('@material-ui/core/CircularProgress').default;
const R = require('react');
exports.circularProgress = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }