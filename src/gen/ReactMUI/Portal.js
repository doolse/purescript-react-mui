const clz = require('@material-ui/core/Portal').default;
const R = require('react');
exports.portal = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }