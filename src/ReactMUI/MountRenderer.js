const clz = require('@material-ui/core/MountRenderer').default;
const R = require('react');
exports.mountRenderer = function() { return function(p) {return R.createElement(clz, p); } }