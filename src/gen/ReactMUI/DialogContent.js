const clz = require('@material-ui/core/DialogContent').default;
const R = require('react');
exports.dialogContent = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }