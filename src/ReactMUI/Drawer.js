const clz = require('@material-ui/core/Drawer').default;
const R = require('react');
exports.drawer = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }