const clz = require('@material-ui/core/Slide').default;
const R = require('react');
exports.slide = function() { return function(p) {return R.createElement(clz, p); } }