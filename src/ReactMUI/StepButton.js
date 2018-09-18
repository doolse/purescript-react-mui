const clz = require('@material-ui/core/StepButton').default;
const R = require('react');
exports.stepButton = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }