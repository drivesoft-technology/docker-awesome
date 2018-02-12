
/* ======================================================================
 * Import Node Package
 * ====================================================================== */

var express     = require('express');
var router      = express.Router();

/* ======================================================================
 * Schema
 * ====================================================================== */

var User = require('./../../schema/user');

/* ======================================================================
 * Router
 * ====================================================================== */

// GET: http://localhost:7000/v1.0/users
router.get ('', function (req, res) {
    User.find().exec().then(function(responseUsers) {
        if (responseUsers) {
            res.json ({ status: 200, success: true, message: 'OK', items: responseUsers }); 
        } else {
            res.json({ status: 400, message: 'BAD REQUEST' });
        }
    }).catch(function(err) { res.json({ status: 400, message: 'BAD REQUEST' }); });
});

module.exports = router;