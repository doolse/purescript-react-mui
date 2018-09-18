const clz = require('@material-ui/core/Popper').default;
const R = require('react');
exports.popper = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }