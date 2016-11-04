"use strict";

class PitFight {
	constructor (firstO, secondO){
		this.firstO = firstO;
		this.secondO = secondO;
		 
	}

	nextRound(firstO, secondO) {
		return (firstO.health - secondO.strength > 0 && secondO.health - firstO.strength > 0 )
	}

	mortalKombat(){
		while (this.nextRound(this.firstO, this.secondO)) {
		var round = 0;
		this.firstO.attack(this.secondO);
		this.secondO.attack(this.firstO);
		
		console.log("Pit fight is over");
	}
}

}

module.exports = PitFight;