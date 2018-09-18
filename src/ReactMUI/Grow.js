const clz = require('@material-ui/core/Grow').default;
const R = require('react');
exports.grow = function() { return function(p) {return R.createElement(clz, p); } }