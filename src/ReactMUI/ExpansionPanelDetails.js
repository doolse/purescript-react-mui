const clz = require('@material-ui/core/ExpansionPanelDetails').default;
const R = require('react');
exports.expansionPanelDetails = function() { return function(p) {return function(c) { return R.createElement(clz, p, c); } } }