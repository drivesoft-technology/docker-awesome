
/* ======================================================================
 * Import Node Package
 * ====================================================================== */

var express = require('express');
var jwt = require('jsonwebtoken');
var morgan = require('morgan');
var mongoose = require('mongoose');
var bodyParser = require('body-parser');
var cookieParser = require('cookie-parser');

/* ======================================================================
 * Config
 * ====================================================================== */

var app = express();
var database = require('./setting/database');
var service = require('./setting/service');

app.set('superSecret', service.secret); // secret variable
app.use(bodyParser.urlencoded({ limit: '10mb', extended: false }));
app.use(bodyParser.json({ limit: '10mb' }));
app.use(cookieParser());
app.use(morgan('dev'));

/* ======================================================================
 * Connection Database 
 * ====================================================================== */

mongoose.connect(database.mongodb, { useMongoClient: true }); // Connect Database (MongoDB)
mongoose.Promise = global.Promise;

/* ======================================================================
 * Setting Router
 * ====================================================================== */

app.get ('/', function (req, res) {
    console.log ({ status: 403, message: 'Access Denied!' });
    res.status (403).send ({ status: 403, message: 'Access Denied!' });
});

app.use (function (req, res, next) {

    var ip  = req.headers ['x-forwarded-for'] || req.connection.remoteAddress || req.socket.remoteAddress;
    // console.log({ method: req.method, ip: ip.substring(7), path: req.originalUrl });
    
    res.header ('Access-Control-Allow-Origin', '*');
    res.header ('Access-Control-Allow-Methods', 'POST, GET, PUT, DELETE, OPTIONS');
    res.header ('Access-Control-Allow-Headers', 'Content-Type, Accept, x-access-token');
    res.header ('Access-Control-Allow-Credentials', true);

    res.setHeader('Cache-Control', 'no-cache, no-store, must-revalidate');
    res.setHeader('Pragma', 'no-cache');
    res.setHeader('Expires', 0);
    
    next ();
    
});

app.use (function (req, res, next) {
    var online_token = req.body.online_token || req.query.online_token || req.headers ['x-access-token'];
    if (online_token && typeof online_token !== 'undefined') {
        jwt.verify (online_token, service.secret, function (err, decoded) {      
            if (err) {
                // console.log ({ status: 403, message: 'Access Denied' });
                return res.json ({ status: 403, message: 'Access Denied!' });
            } else {
                if (decoded._doc) {
                    // console.log(decoded);
                    next(); // ได้ไปต่อ
                } else {
                    // console.log ({ status: 403, message: 'Access Denied!' });
                    return res.json ({ status: 403, message: 'Access Denied!' });
                }
            }
        });
    } else {
        if (req.method == 'POST' && req.originalUrl == '/v1.0/auth/token') {
            next();
        } else {
            // console.log ({ status: 403, message: 'Access Denied!' });
            return res.json ({ status: 403, message: 'Access Denied!' });
        }
    }
});

/* ======================================================================
 * Router v1.0
 * ====================================================================== */

var auth = require('./v1.0/routers/auth');
var users = require('./v1.0/routers/users');

app.use('/v1.0/auth', auth);
app.use('/v1.0/users', users);

app.listen(service.port);
console.log('RESTful API at http://%s:%s', service.db_address, service.port);