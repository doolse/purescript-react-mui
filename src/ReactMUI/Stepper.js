const clz = require('@material-ui/core/Stepper').default;
const R = require('react');
exports.stepper = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }