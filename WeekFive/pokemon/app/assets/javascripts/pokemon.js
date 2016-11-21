$(document).ready(function(){

$(".js-show-pokemon").on("click", function() {
	console.log("the click registered");

	var pokemonUri = $(this).data("pokemon-uri");

	var pokemon = new PokemonApp.Pokemon(pokemonUri);
	pokemon.render();
})


});

PokemonApp.Pokemon = class {
	constructor (pokemonUri) {
		this.apiUri = pokemonUri; 
	}

	render () {
		console.log(`Rendering pokemon with url: ${this.apiUri}`);

		$.ajax({
			type: "GET",
			url: `/${this.apiUri}`,
			success: PokemonApp.showPokemonModal,
			error: PokemonApp.handleError
		});
	}
};

PokemonApp.showPokemonModal = function (apiResult){
	console.log(apiResult);
	PokemonApp.evolutions = apiResult.evolutions;
	$(".js-pkmn-name").text(apiResult.name);
	$(".js-pkmn-number").text(apiResult.pkdx_id);
	$(".js-pkmn-height").text(apiResult.height);
	$(".js-pkmn-weight").text(apiResult.weight);
	$(".js-pkmn-hp").text(apiResult.hp);
	$(".js-pkmn-attack").text(apiResult.attack);
	$(".js-pkmn-defense").text(apiResult.defense);
	$(".js-pkmn-spAtk").text(apiResult.sp_atk);
	$(".js-pkmn-spDef").text(apiResult.sp_def);
	typeFinder(apiResult);
	$(".js-pkmn-type").text(`${types}`);
    PokemonApp.descriptionFinder(apiResult);
	


}


PokemonApp.handleError = function(errorThang) {
	console.log("API error");
	console.log(errorThang.responseText);
}

 
PokemonApp.descriptionFinder = function(result){


var nums = [];
result.descriptions.forEach(function(gen){
	nums.push(parseInt(gen.name.slice(-1)));
});

nums.forEach(function(num){
	var highest = getMaxNum(result){
		function getMaxNum(array){
			return Math.max.apply(null, array);
		}
	}
	console.log("highest is " + highest)
	
	// nums.forEach(function(num){
	// 	if (num === highest){
	// 		index = nums.findindex();
	// 		nums[index] ++

	// 	}
	// });
});

var descriptionUri = result.descriptions[length - 1].resource_uri;





$.ajax({
	type: "GET",
	url:`${descriptionUri}`,
	success: PokemonApp.foundDescription,
	error: PokemonApp.handleError

})

}

PokemonApp.foundDescription = function(result){
	console.log(result);
	description = result.description;
	$(".js-pkmn-description").text(`${description}`);
	$(".js-pokemon-modal").modal("show");


}

function typeFinder (result){
	types = [];
	result.types.forEach(function(type){
	types.push(type.name);
	});
	}	





