var Controller = require('nylex-controller');

var controller = new Controller();


controller.get('/', function(req, res) {
    res.json(
        [
            {
                "name": "Heineken",
                "country": "Holanda",
                "imageUrl": "xxx",
                "alcoholGrade": 5
            },
            {
                "name": "Mahou",
                "country": "Holanda",
                "imageUrl": "xxx",
                "alcoholGrade": 5
            },
            {
                "name": "Cruzcampo",
                "country": "Holanda",
                "imageUrl": "xxx",
                "alcoholGrade": 5
            }
        ]

    );

});

module.exports = controller;
