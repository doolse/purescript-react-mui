const clz = require('@material-ui/core/FormLabel').default;
const R = require('react');
exports.formLabel = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }