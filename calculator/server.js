var express = require('express'),
  app = express(),
  port = process.env.PORT || 8080;

app.use(express.static('public'));

// ✅ ADD THIS
app.get('/health', function (req, res) {
  res.status(200).send('OK');
});

var routes = require("./api/routes");
routes(app);

if (!module.parent) {
  app.listen(port);
}

module.exports = app;

console.log("Server running on port " + port);