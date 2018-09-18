const clz = require('@material-ui/core/StepContent').default;
const R = require('react');
exports.stepContent = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }