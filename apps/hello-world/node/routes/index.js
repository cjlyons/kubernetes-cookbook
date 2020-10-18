var express = require('express');
var router = express.Router();
const log = require('../logger.js');
const salutation = "Hello";
/* GET home page. */
router.get('/:name?', function(req, res, next) {
  name = req.params.name || "World";
  var welcomeMessage = {salutation: salutation, name:name}
  log.info(`Welcome Message: ${JSON.stringify(welcomeMessage)}`);
  res.json(welcomeMessage);
});

/* GET home page. */
router.get('/html/:name?', function(req, res, next) {
  name = req.params.name || "World";
  welcomeMessage = `${salutation} ${name}!`;
  log.info(`Welcome Message: ${welcomeMessage}`);
  res.render('index', { welcomeMessage: welcomeMessage });
});

module.exports = router;
