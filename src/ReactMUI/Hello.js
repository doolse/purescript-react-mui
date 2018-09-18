const clz = require('@material-ui/core/Hello').default;
const R = require('react');
exports.hello = function() { return function(p) {return R.createElement(clz, p); } }