const clz = require('@material-ui/core/SwipeableDrawer').default;
const R = require('react');
exports.swipeableDrawer = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }