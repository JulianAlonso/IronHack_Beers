var Controller = require('nylex-controller');

var controller = new Controller();


controller.get('/', function(req, res) {

    res.sendFile("/public/base.html");

});

module.exports = controller;
