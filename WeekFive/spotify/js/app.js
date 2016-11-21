

$(document).ready(function(){


$(".search").on("submit", runSearch);



});

function runSearch (eventObj){

	eventObj.preventDefault();
	var SearchTerm = $(".js-artist").val();
	var output = document.getElementById("output");

	if (output.hasChildNodes()){
		console.log("Has children")
		$(".content").children().fadeOut(1200);
		setTimeout(function(){ 
	
			while (output.hasChildNodes()) {
	  output.removeChild(output.lastChild);
		}
	

		$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=artist&query=${SearchTerm}`,
		success: successMethod,
		error: handleError
	});
		}, 1200)
	} else {

	console.log("Success Method");
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=artist&query=${SearchTerm}`,
		success: successMethod,
		error: handleError
	});
	}
}

//end of search function


function successMethod (response){
	

	response.artists.items.forEach(function(artist){

		var images = artist.images;
		
		if (images[0]){
			var image = `<img src="${images[0].url}" />`;
			var content = `<li class="content" style="display:none;">
							<h3><a href="#" class="click" data-artist-id="${artist.id}" data-toggle="modal" data-target=".bd-example-modal-lg">${artist.name}</a></h3>
							${image}</li>`;

			$(".js-output").append(content);
				} else {
					var noImgContent = `<li class="content" class="click" style="display:none;"><h3><a href="#" class="click" data-artist-id="${artist.id}" data-toggle="modal" data-target=".bd-example-modal-lg" >${artist.name}</a></h3>
										<br><br><p>No Image</p><br><br></li>`
					$(".js-output").append(noImgContent);
				}
			$(".content").fadeIn(1000);
	});

	$(".click").on("click", popup);

}
//end of artist search success

function handleError (error) {
	console.log("Error!");
	console.log(error.responseText);
}

//end of generic error



function successAlbum(response){

	response.items.forEach(function(album){ 
		var name = album.name;
		var pic = album.images[0].url;
		albumStuff = ` 
		<li>
		<img src="${pic}" /> 
		<span> ${name} </span>
		</li> `;


		// $(".modal-list").append(albumStuff);

	});
}

//end of album search success

function popup(eventObj){
	eventObj.preventDefault();
	var stuff = document.getElementById("modal-list");

	if (stuff.hasChildNodes()){
		while (stuff.hasChildNodes()) {
	  stuff.removeChild(stuff.lastChild);
		}
	}

	var artistId = $(this).data("artist-id");
	console.log(artistId);

	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/artists/${artistId}/albums?market=US`,
		success: successAlbum,
		error: handleError
	})

}


//end of album search



