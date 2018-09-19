const clz = require('@material-ui/core/StepConnector').default;
const R = require('react');
exports.stepConnector = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }