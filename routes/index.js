const express = require('express');
const router = express.Router();

const home = require('./../inc/home');
const contacts = require('./../inc/contacts');

router.get('/', function(req, res, next) {
    home.getData().then(data => {
        res.render('index', {
            banners: data[0],
            news: data[1]
        })
    }).catch(err => {
        res.send(err);
    });
});

router.post('/contato', function(req, res, next) {
    contacts.save(req.body).then(results => {
        req.body = {};
        contacts.render(req, res, null, 'Sua mensagem foi enviada.');
    }).catch(err => {
        res.send(err);
    })
});

module.exports = router;