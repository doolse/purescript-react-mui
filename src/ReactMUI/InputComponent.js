const clz = require('@material-ui/core/InputComponent').default;
const R = require('react');
exports.inputComponent = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }