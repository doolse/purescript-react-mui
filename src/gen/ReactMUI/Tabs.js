const clz = require('@material-ui/core/Tabs').default;
const R = require('react');
exports.tabs = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }