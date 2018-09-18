const clz = require('@material-ui/core/DialogContentText').default;
const R = require('react');
exports.dialogContentText = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }