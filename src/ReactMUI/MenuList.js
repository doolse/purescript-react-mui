const clz = require('@material-ui/core/MenuList').default;
const R = require('react');
exports.menuList = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }