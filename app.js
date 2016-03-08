/* eslint-env node */
var express = require('express');
var app = express();

app.use(express.static(__dirname));

var server = app.listen(9000, function () {

  var host = server.address().address;
  var port = server.address().port;

  console.log('Example app listening at http://%s:%s', host, port);

  var count = 1;
  setInterval(function() {
    console.log('Count >> ' + count);
    count++;
  }, 300)
});
