const express = require('express');
const router = express.Router();

const users = require('./../inc/users');

/* GET users listing. */
router.get('/', function(req, res, next) {
    res.render('admin/index');
});

router.post('/login', function(req, res, next) {
    if(!req.body.email) {
        users.render(req, res, 'Preencha o campo e-mail.');
    } else if(!req.body.password) {
        users.render(req, res, 'Preencha o campo senha.');
    } else {
        users.login(req.body.email, req.body.password).then(user => {
            req.session.user = user;
            res.redirect('/admin');
        }).catch(err => {
            users.render(req, res, err.message || err);
        })
    }
});

router.get('/login', function(req, res, next) {
    users.render(req, res, null);
});

router.get('/banners', function(req, res, next) {
    res.render('admin/banners');
});

router.get('/noticias', function(req, res, next) {
    res.render('admin/noticias');
});

router.get('/usuarios', function(req, res, next) {
    res.render('admin/usuarios');
});

router.get('/emails', function(req, res, next) {
    res.render('admin/emails');
});

module.exports = router;