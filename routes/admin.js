const express = require('express');
const router = express.Router();

const users = require('./../inc/users');

router.use(function(req, res, next) {
    if(['/login'].indexOf(req.url) === -1 && !req.session.user) {
        res.redirect('/admin/login');
    } else {
        next();
    }
});

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

router.get('/logout', function(req, res, next) {
    delete req.session.user;
    res.redirect('/admin/login');
});

router.get('/banners', function(req, res, next) {
    res.render('admin/banners');
});

router.get('/noticias', function(req, res, next) {
    res.render('admin/news');
});

router.get('/usuarios', function(req, res, next) {
    res.render('admin/users');
});

router.get('/emails', function(req, res, next) {
    res.render('admin/emails');
});

module.exports = router;