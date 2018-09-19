const clz = require('@material-ui/core/ExpansionPanelSummary').default;
const R = require('react');
exports.expansionPanelSummary = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }