const clz = require('@material-ui/core/ExpansionPanelActions').default;
const R = require('react');
exports.expansionPanelActions = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }