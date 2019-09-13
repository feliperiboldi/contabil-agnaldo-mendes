const express = require('express');
const router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
    res.render('admin/index');
});

router.get('/login', function(req, res, next) {
    if(!req.session.views) req.session.views = 0;
    console.log(req.session.views++);

    res.render('admin/login');
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