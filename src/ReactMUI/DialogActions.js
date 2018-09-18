const clz = require('@material-ui/core/DialogActions').default;
const R = require('react');
exports.dialogActions = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }