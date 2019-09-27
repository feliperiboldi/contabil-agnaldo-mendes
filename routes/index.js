const express = require('express');
const router = express.Router();

const home = require('./../inc/home');
const contacts = require('./../inc/contacts');

router.get('/', function(req, res, next) {
    home.render(req, res, null, null);
});

router.post('/enviar-mensagem', function(req, res, next) {
    contacts.save(req.fields).then(results => {
        home.render(req, res, null, 'Sua mensagem foi enviada!');
    }).catch(err => {
        home.render(req, res, err.message, null);
    });
});

module.exports = router;