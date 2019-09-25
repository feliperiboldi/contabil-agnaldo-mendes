const express = require('express');
const router = express.Router();

const home = require('./../inc/home');

/* GET home page. */
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

module.exports = router;
