const clz = require('@material-ui/core/CardContent').default;
const R = require('react');
exports.cardContent = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }