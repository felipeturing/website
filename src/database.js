const mongoose = require('mongoose');
const { database } = require('./keys');


/*
* Creando la promesa para la conexión a MongoDB
* - useNewUrlParser es una condición necesaria y suficiente para la conexión
*/
mongoose.connect(database.URI, {
    useNewUrlParser: true
})
    .then(db => console.log('Base de datos conectada'))
    .catch( err => console.error(err));
