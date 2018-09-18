const clz = require('@material-ui/core/NativeSelectInput').default;
const R = require('react');
exports.nativeSelectInput = function() { return function(p) {return R.createElement(clz, p); } }