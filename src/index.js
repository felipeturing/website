const express = require('express');
const config = require('./server/config');

/*
* Configuración de MongoDB
* Configuración del servidor web
*/
require('./database')
const app = config(express());

// Ejecutando el servidor
app.listen(app.get('port'), () => {
    console.log("Servidor del Website corriendo tranquilamente en el puerto", app.get('port'));
});
