const clz = require('@material-ui/core/NativeSelect').default;
const R = require('react');
exports.nativeSelect = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }