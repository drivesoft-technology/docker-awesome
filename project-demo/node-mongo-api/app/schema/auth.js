
var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var AuthSchema = new Schema({
    email : { type: String, required: true, unique: true },
    admin : { type: Number, default: 0 } 
}, { collection : 'col_auth' });

module.exports = mongoose.model('Auth', AuthSchema);