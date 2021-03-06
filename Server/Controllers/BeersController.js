var Controller = require('nylex-controller');

var controller = new Controller();


controller.get('/', function(req, res) {
    res.json(

        [
            {
                "Brand" : "Corona",
                "Country" : "Mexico",
                "Alcohol" : 5,
                "ImageUrl" : "http://www.distribuidoralascondes.cl/imagenesProductos/gr/cerveza_corona_330cc_7_distribuidor.jpg",
            },
            {
                "Brand" : "Guinness",
                "Country" : "England",
                "Alcohol" : 9,
                "ImageUrl" : "http://upload.wikimedia.org/wikipedia/commons/9/92/Guinness.jpg",
            },
            {
                "Brand" : "Peroni",
                "Country" : "Italy",
                "Alcohol" : 4,
                "ImageUrl" : "http://www.meglioincasa.it/images/0018%20--%20Peroni_Bottiglia%2033%20cl%20(26).JPG",
            },
            {
                "Brand" : "Polar",
                "Country" : "Venezuela",
                "Alcohol" : 4,
                "ImageUrl" : "http://www.kioskovenezolano.com/365-large/cerveza-polar-pilsen.jpg",
            },
            {
                "Brand" : "Coronator",
                "Country" : "France",
                "Alcohol" : 14,
                "ImageUrl" : "http://res.cloudinary.com/ratebeer/image/upload/w_250,c_limit,q_85,d_beer_def.gif/beer_100262.jpg",
            },
        ]

    );

});

module.exports = controller;
