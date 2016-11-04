"use strict";


class Vikings {
	constructor (name, health, strength) {
		this.name = name;
		this.health = health;
		this.strength = strength;
		this.type = "viking"
	}

	attack(victim){
		victim.health = victim.health - this.strength
		console.log(`${this.name} reduced ${victim.name} to ${victim.health} health!`);
	}

}

module.exports = Vikings; 