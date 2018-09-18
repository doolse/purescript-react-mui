const clz = require('@material-ui/core/StepLabel').default;
const R = require('react');
exports.stepLabel = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }