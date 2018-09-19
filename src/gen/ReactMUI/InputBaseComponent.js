const clz = require('@material-ui/core/InputBaseComponent').default;
const R = require('react');
exports.inputBaseComponent = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }