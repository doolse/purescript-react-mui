const clz = require('@material-ui/core/Textarea').default;
const R = require('react');
exports.textarea = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }