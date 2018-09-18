const clz = require('@material-ui/core/AppBar').default;
const R = require('react');
exports.appBar = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }