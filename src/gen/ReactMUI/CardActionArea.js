const clz = require('@material-ui/core/CardActionArea').default;
const R = require('react');
exports.cardActionArea = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }