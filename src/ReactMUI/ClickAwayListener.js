const clz = require('@material-ui/core/ClickAwayListener').default;
const R = require('react');
exports.clickAwayListener = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }