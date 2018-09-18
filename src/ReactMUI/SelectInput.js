const clz = require('@material-ui/core/SelectInput').default;
const R = require('react');
exports.selectInput = function() { return function(p) {return R.createElement(clz, p); } }