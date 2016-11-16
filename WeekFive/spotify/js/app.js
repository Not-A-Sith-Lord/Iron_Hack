
function successMethod (response){
	console.log(response.artists);

	response.artists.items.forEach(function(artist){

		var images = artist.images;

		if (images[0]){
			var image = `<img src=${images[0].url} />`;
			var content = `<li>
							<h3><a href="#" class="click" data-artist-id="${artist.id}" data-toggle="modal" data-target=".bd-example-modal-lg">${artist.name}</a></h3>
							${image}</li>`;

			$(".js-output").append(content);
				} else {
					var noImgContent = `<li><h3><a href="#" class="click" data-artist-id="${artist.id}" data-toggle="modal" data-target=".bd-example-modal-lg" >${artist.name}</a></h3>
										<br><br><p>No Image</p><br><br></li>`
					$(".js-output").append(noImgContent);
				}
	});

	$(".click").on("click", popup);

}
//end of succesful search

function handleError (error) {
	console.log("Error!");
	console.log(error.responseText);
}

// end of error in ajax calls

function runSearch (eventObj){

eventObj.preventDefault();
var SearchTerm = $(".js-artist").val();
var output = document.getElementById("output");

if (output.hasChildNodes()){
	console.log("Has children")

	while (output.hasChildNodes())
  output.removeChild(output.lastChild);
}

$.ajax({
	type: "GET",
	url: `https://api.spotify.com/v1/search?type=artist&query=${SearchTerm}`,
	success: successMethod,
	error: handleError


});

}

//end of search function

function successAlbum(response){

	response.items.forEach(function(album){ 
		var name = album.name;
		var pic = album.images[0].url;
		$(".modal-content").append(name);
		$(".modal-content").append(`<img src="${pic}" />`);

	});
}

function popup(eventObj){
	eventObj.preventDefault();
	
	var artistId = $(this).data("artist-id");
	console.log(artistId);

	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
		success: successAlbum,
		error: handleError
	})

}

$(document).ready(function(){


$(".search").on("submit", runSearch);






});