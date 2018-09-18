const clz = require('@material-ui/core/BottomNavigation').default;
const R = require('react');
exports.bottomNavigation = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }