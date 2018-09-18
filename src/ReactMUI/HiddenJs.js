const clz = require('@material-ui/core/HiddenJs').default;
const R = require('react');
exports.hiddenJs = function() { return function(p) {return R.createElement(clz, p); } }