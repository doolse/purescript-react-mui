const clz = require('@material-ui/core/Zoom').default;
const R = require('react');
exports.zoom = function() { return function(p) {return R.createElement(clz, p); } }