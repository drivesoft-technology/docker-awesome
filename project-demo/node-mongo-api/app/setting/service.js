
/* ======================================================================
 * Config RESTful API
 * ====================================================================== */

module.exports = {
    
    /* api service */
    'db_address' : '0.0.0.0',
    'port'       : 8000,

    /* db service */
    'db_host'    : '0.0.0.0',
    'db_port'    : 27017,
    'db_user'    : 'root',
    'db_pass'    : '123456',
    'db_name'    : 'db_node_api',
    
    /* url */
    'apiUrl'     : 'http://0.0.0.0:8000',
    'secret'     : 'node-mongo-api',
    'expires'    : (1440 * 1) // expires in 24 hours (1440:24 hours)
    
};