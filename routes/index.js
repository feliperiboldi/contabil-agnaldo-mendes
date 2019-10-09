const express = require('express');
const router = express.Router();

const home = require('./../inc/home');
const news = require('./../inc/news');
const contacts = require('./../inc/contacts');

router.get('/', function(req, res, next) {
    home.render(req, res, null, null);
});

router.get('/noticias/:id', function(req, res, next) {
    news.getNewsById(req.params.id).then(data => {
        res.render('news', {
            data
        });
    }).catch(err => {
        res.send(err);
    });
});

router.post('/enviar-mensagem', function(req, res, next) {
    if(!req.body.name) {
        home.render(req, res, 'Digite o nome.', null);
    } else if(!req.body.email && !req.body.telephone) {
        home.render(req, res, 'Digite um e-mail ou telefone.', null);
    } else if(!req.body.subject) {
        home.render(req, res, 'Selecione um assunto.', null);
    } else if(!req.body.message) {
        home.render(req, res, 'Digite a mensagem.', null);
    } else {
        contacts.save(req.fields).then(results => {
            home.render(req, res, null, 'Sua mensagem foi enviada!');
        }).catch(err => {
            home.render(req, res, err.message, null);
        });
    }
});

module.exports = router;