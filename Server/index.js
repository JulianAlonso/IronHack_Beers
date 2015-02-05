var nylex = require('nylex');


var beersController = require("./Controllers/BeersController");

nylex.mount("/beer", beersController);

nylex.start(80);
