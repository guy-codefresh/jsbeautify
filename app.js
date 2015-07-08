/* eslint-env node */
var express = require('express');
var app = express();

app.use(express.static(__dirname));

// test 123

var server = app.listen(9000, function () {

  var host = server.address().address;
  var port = server.address().port;

  console.log('Example app listening at http://%s:%s', host, port);

});
