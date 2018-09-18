const clz = require('@material-ui/core/Hidden').default;
const R = require('react');
exports.hidden = function() { return function(p) {return R.createElement(clz, p); } }