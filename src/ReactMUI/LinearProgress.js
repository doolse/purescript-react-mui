const clz = require('@material-ui/core/LinearProgress').default;
const R = require('react');
exports.linearProgress = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }