const clz = require('@material-ui/core/NoSsr').default;
const R = require('react');
exports.noSsr = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }