const clz = require('@material-ui/core/BottomNavigationAction').default;
const R = require('react');
exports.bottomNavigationAction = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }