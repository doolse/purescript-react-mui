const clz = require('@material-ui/core/SvgIcon').default;
const R = require('react');
exports.svgIcon = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }