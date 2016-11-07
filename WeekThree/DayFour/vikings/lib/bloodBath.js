"use strict";

class bloodBath {
	constructor(){
		this.vikings = [];
		this.saxons = [];
	}

	addWarrior(warrior){
		if (warrior.type === "saxon"){
			this.saxons.push(warrior);
		} else {
			this.vikings.push(warrior);
		}
	}

	battle(){
		console.log("The Vikings invade!!!!")
		console.log(`Viking numbers: ${this.vikings.length} Saxon numbers: ${this.saxons.length}`);
		console.log("Dramatic pause!")

		setTimeout(() => {
		var rounds = Math.floor(Math.random() * ((8-5)+1) + 5);
		

		for (var i = 0; i <= rounds; i++) {
			var swing = 0;
			while (swing < this.saxons.length) {
				var randomSaxon = Math.floor(Math.random() * (((this.saxons.length - 1) - 0)+1) + 0);
				var randomViking = Math.floor(Math.random() * (((this.vikings.length - 1) - 0)+1) + 0);
				
				
				if (this.vikings[swing] != undefined) {
				console.log("This round is about to commence!")
				
				this.vikings[swing].attack(this.saxons[randomSaxon])
				this.saxons[swing].attack(this.vikings[randomViking])
				
				if (this.vikings[swing].health <= 0 ){
					this.vikings.splice(swing, 1)
					console.log(`${this.vikings[swing].name} was removed! New array is: ${this.vikings}`)
				} else if (this.saxons[swing].health <= 0){
					this.saxons.splice(swing, 1)
					console.log(`${this.saxons[swing]} was removed! New array is: ${this.saxons}`)
				} 
					}

				swing++;
				
			}
		}
}, 4000)
		console.log(`BLOOD BATH RESULTS: ${this.vikings.length} Vikings left and ${this.saxons.length} Saxons left!`);
	}
}

module.exports = bloodBath;