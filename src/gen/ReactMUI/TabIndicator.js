const clz = require('@material-ui/core/TabIndicator').default;
const R = require('react');
exports.tabIndicator = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }