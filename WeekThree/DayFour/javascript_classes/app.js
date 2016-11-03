"use strict";
var Animal = require("./lib/animal.js");
var Car = require("./lib/car.js");


var thunder = new Animal("Thunder", "German Shepard", "Woof");
console.log(thunder)
thunder.chase();
thunder.bark();

var bear = new Animal("Beaar", "Border Collie", "Uooooah");

var caro = new Car("Jeep", "Beep Beep");

caro.honk();