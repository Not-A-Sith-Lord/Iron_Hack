"use strict";

class Saxons {
	constructor() {
		this.health = Math.floor((Math.random() * 10) + 1);
		this.strength = Math.floor((Math.random() * 2) + 1);
		this.type = "saxon"
	}

	attack(victim){
		victim.health = victim.health - this.strength
		console.log(`Saxon peasent reduced ${victim.name} to ${victim.health} health!`);
	}
}


module.exports = Saxons;