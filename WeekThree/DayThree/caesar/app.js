var caesarCipher = require("./lib/caeser-cipher.js");


var encrypted = caesarCipher("brutus");
var encrypted1 = caesarCipher("87887BRutus");
var encrypted2 = caesarCipher("Et tu, brute?", 6);

console.log(encrypted);
console.log(encrypted1);
console.log(encrypted2);
