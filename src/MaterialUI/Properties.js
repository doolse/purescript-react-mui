exports.mkPropRecord = function (arr) {
  var out = {};
  arr.forEach(function(elem){
    Object.assign(out, elem);
  });
  return out;
}

exports.mkPropF = function (k) {
  return function (v) {
    var obj = {};
    obj[k] = v;
    return obj;    
  }
}
