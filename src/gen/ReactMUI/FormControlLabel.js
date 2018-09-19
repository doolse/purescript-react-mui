const clz = require('@material-ui/core/FormControlLabel').default;
const R = require('react');
exports.formControlLabel = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }