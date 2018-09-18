const clz = require('@material-ui/core/Transition').default;
const R = require('react');
exports.transition = function() { return function(p) {return R.createElement(clz, p); } }