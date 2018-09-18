const clz = require('@material-ui/core/MobileStepper').default;
const R = require('react');
exports.mobileStepper = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }