
/* ======================================================================
 * Import Node Package
 * ====================================================================== */

var express = require('express');
var jwt = require ('jsonwebtoken');
var router = express.Router();
var assert = require('assert');

/* ======================================================================
 * Contect Database
 * ====================================================================== */

var service = require('./../../setting/service');

/* ======================================================================
 * Schema
 * ====================================================================== */

var User = require('./../../schema/user');
var Auth = require('./../../schema/auth');

/* ======================================================================
 * Router
 * ====================================================================== */

// GET: http://127.0.0.1:7000/v1.0/auth/token
router.get('/token', function(req, res) {
    res.json({ status: 200, success: true, message: 'OK' });
});

// POST: http://127.0.0.1:7000/v1.0/auth/token
router.post('/token', function(req, res) {
    User.findOne({ email: req.body.email }).exec().then(function(responseUser) {
        if (responseUser) {
            Auth.findOne({ email: req.body.email }).exec().then(function(responseAuth) {
                if (responseAuth) {
                    var token = jwt.sign(responseUser, service.secret, { expiresIn: service.expires, algorithm: 'HS256' });
                    res.json({ status: 200, success: true, message: 'OK', token: token });
                } else {
                    var auth = new Auth({ email: req.body.email, admin: 0 });
                    auth.save().then(function(responseAuth) {
                        var token = jwt.sign(responseUser, service.secret, { expiresIn: service.expires, algorithm: 'HS256' });
                        res.json({ status: 201, created: true, message: 'CREATED', token: token });
                    }).catch(function(err) { res.json({ status: 400, message: 'BAD REQUEST' }); });
                }
            }).catch(function(err) { res.json({ status: 400, message: 'BAD REQUEST' }); });
        } else {
            res.json({ status: 400, message: 'BAD REQUEST' });
        }
    }).catch(function(err) { res.json({ status: 400, message: 'BAD REQUEST' }); });
});

module.exports = router;