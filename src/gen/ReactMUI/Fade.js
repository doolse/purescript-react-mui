const clz = require('@material-ui/core/Fade').default;
const R = require('react');
exports.fade = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }