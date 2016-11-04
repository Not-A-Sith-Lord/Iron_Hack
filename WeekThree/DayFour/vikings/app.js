"use strict"; 

var Viking = require("./lib/viking.js")
var Saxon = require("./lib/saxons.js")
var PitFight = require("./lib/pit.js")
var BloodBath = require("./lib/bloodBath.js")


var carl = new Viking("carl", 30, 3);
var jenkins = new Viking("jenkins", 40, 2);
var louis = new Viking("louis", 40, 2);

var peasant0 = new Saxon();
var peasant1 = new Saxon();
var peasant2 = new Saxon();
var peasant3 = new Saxon();

var wesex = new BloodBath;

wesex.addWarrior(carl);
wesex.addWarrior(jenkins);
wesex.addWarrior(louis);

wesex.addWarrior(peasant0)
wesex.addWarrior(peasant1)
wesex.addWarrior(peasant2)
wesex.addWarrior(peasant3)


console.log(wesex);
wesex.battle();

// Call this to battle 
// var valhalla = new PitFight(carl, jenkins);
// valhalla.mortalKombat();