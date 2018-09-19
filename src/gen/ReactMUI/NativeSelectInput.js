const clz = require('@material-ui/core/NativeSelectInput').default;
const R = require('react');
exports.nativeSelectInput = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }