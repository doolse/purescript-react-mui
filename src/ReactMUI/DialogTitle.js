const clz = require('@material-ui/core/DialogTitle').default;
const R = require('react');
exports.dialogTitle = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }