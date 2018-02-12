
var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var UserSchema = new Schema({
    username : { type: String, required: true, unique: true },
    password : { type: String, required: true },
    email : { type: String, required: true },
    firstname : { type: String, default: '' },
    lastname : { type: String,  default: '' },
    status : { type: String, default: 'A' } 
}, { collection : 'col_user' });

module.exports = mongoose.model('User', UserSchema);