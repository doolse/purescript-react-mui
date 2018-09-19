const clz = require('@material-ui/core/ListSubheader').default;
const R = require('react');
exports.listSubheader = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }