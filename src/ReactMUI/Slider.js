const clz = require('@material-ui/core/Slider').default;
const R = require('react');
exports.slider = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }