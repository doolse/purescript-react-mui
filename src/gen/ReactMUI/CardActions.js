const clz = require('@material-ui/core/CardActions').default;
const R = require('react');
exports.cardActions = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }