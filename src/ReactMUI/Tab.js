const clz = require('@material-ui/core/Tab').default;
const R = require('react');
exports.tab = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }