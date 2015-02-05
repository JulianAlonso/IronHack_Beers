var nylex = require('nylex');


var beersController = require("./Controllers/BeersController");
var indexController = require("./Controllers/IndexController");

nylex.static("./public", "/public");

nylex.mount("/", indexController);
nylex.mount("/beer", beersController);

nylex.before("/*", function(req, res, next){
    console.log("estoy recibiendo una peticion.")
    next();
})

nylex.start(80);
