const clz = require('@material-ui/core/ShallowRenderer').default;
const R = require('react');
exports.shallowRenderer = function() { return function(p) {return R.createElement(clz, p); } }