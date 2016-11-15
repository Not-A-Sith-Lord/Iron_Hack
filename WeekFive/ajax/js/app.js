

function handleError (error) {
	console.log("Error!");
	console.log(error.responseText);
}

function showCharacters (response) {
		console.log("Success!");
		console.log(response);

		response.forEach(function (oneCharacter){
			var characterLi = `
			<li> ${oneCharacter.name} </li>
			<p> Occupation: ${oneCharacter.occupation}</p>
			<p> Weapon: ${oneCharacter.weapon}</p>
			<p> ID: ${oneCharacter.id}</p>
			`
		$(".js-character-list").append(characterLi);
	})

	}

function fetchCharacters() {
	console.log("fetching....")
	$.ajax({
		type: "GET",
		url: "https://ironhack-characters.herokuapp.com/characters",
		success: showCharacters,
		error: handleError
	});

} 

function saveAckbar (eventObj){
	eventObj.preventDefault();
	var weaponInput = $(".js-ackbar-weapon").val();

	if (weaponInput === "") {
		weaponInput = "Sausages";
	}

	var ackbarInfo = {
		name: "Admiral Ackbar",
		occupation: "Rebel Fleet Admiral",
		weapon: weaponInput
	};

	function addAckbar (apiInfo){
		console.log("Save Ackbar success!!!");
		console.log(apiInfo);
	}

	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: ackbarInfo,
		success: addAckbar,
		error: handleError
	})
}

function saveHero (eventObj){
	eventObj.preventDefault();
	var weaponInput = $(".js-hero-weapon").val();
	var nameInput = $(".js-hero-name").val();
	var occupationInput = $(".js-hero-occupation").val();


	var heroInfo = {
		name: nameInput,
		occupation: occupationInput,
		weapon: weaponInput
	};

	function addHero (apiInfo){
		console.log("Save Hero success!!!");
		console.log(apiInfo);
	}

	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: heroInfo,
		success: addHero,
		error: handleError
	})
}

$(document).ready(function(){

	$(".js-fetch-characters").on("click", fetchCharacters);
	$(".js-ackbar-form").on("submit", saveAckbar);
	$(".js-hero-form").on("submit", saveHero);










});