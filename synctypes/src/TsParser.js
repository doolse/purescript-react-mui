const ReadTS = require('readts');

const ts = require('typescript')
exports.ts = ts;

exports.parseConfig = function(fname) {
    return new ReadTS.Parser().parseConfig(fname);
}

exports.isDefined = function(x) {
    return x !== undefined;
}

exports.mapChildNodes = function (f) {
    return function (n) {
        var arr = [];
        ts.forEachChild(n, function(cn) {
            var res = f(cn);
            arr.push(res);
        })
        return arr;
    }
}

exports.debugger = function(msg) {
  debugger;
}
