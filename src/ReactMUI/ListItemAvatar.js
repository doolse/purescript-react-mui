const clz = require('@material-ui/core/ListItemAvatar').default;
const R = require('react');
exports.listItemAvatar = function() { return function(p) {return R.createElement(clz, p); } }