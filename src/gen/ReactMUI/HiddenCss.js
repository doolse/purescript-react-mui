const clz = require('@material-ui/core/HiddenCss').default;
const R = require('react');
exports.hiddenCss = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }