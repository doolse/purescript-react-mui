const clz = require('@material-ui/core/FormControl').default;
const R = require('react');
exports.formControl = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }