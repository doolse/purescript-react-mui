const clz = require('@material-ui/core/CardHeader').default;
const R = require('react');
exports.cardHeader = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }