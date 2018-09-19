const clz = require('@material-ui/core/Avatar').default;
const R = require('react');
exports.avatar = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }