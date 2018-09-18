const clz = require('@material-ui/core/Fade').default;
const R = require('react');
exports.fade = function() { return function(p) {return R.createElement(clz, p); } }