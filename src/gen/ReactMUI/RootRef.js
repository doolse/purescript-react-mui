const clz = require('@material-ui/core/RootRef').default;
const R = require('react');
exports.rootRef = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }