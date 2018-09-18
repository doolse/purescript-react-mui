const clz = require('@material-ui/core/CardMedia').default;
const R = require('react');
exports.cardMedia = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }