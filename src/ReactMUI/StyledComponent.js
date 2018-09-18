const clz = require('@material-ui/core/StyledComponent').default;
const R = require('react');
exports.styledComponent = function() { return function(p) {return R.createElement(clz, p); } }