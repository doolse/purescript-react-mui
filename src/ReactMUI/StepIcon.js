const clz = require('@material-ui/core/StepIcon').default;
const R = require('react');
exports.stepIcon = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }