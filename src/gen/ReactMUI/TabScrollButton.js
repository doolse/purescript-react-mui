const clz = require('@material-ui/core/TabScrollButton').default;
const R = require('react');
exports.tabScrollButton = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }