const clz = require('@material-ui/core/InputLabel').default;
const R = require('react');
exports.inputLabel = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }