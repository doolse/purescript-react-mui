const clz = require('@material-ui/core/Modal').default;
const R = require('react');
exports.modal = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }