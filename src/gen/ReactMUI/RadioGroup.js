const clz = require('@material-ui/core/RadioGroup').default;
const R = require('react');
exports.radioGroup = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }