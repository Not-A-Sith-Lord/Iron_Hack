

$(document).ready(function(){

$(".btn-play").on("click", togglePlay);
$(".search").on("submit", searchSong)

});


function togglePlay(){
	var button = $(this);

	if (button.hasClass("disabled")) {
		button.removeClass("disabled");
		button.addClass("playing");
		$('.js-player').trigger('play');
		$('.js-player').on('timeupdate', pushTime);

	} else {
		button.removeClass("playing");
		button.addClass("disabled");
		$('.js-player').trigger('pause');
		console.log("Music playing");
	}
}

function pushTime () {
	var current = $('.js-player').prop('currentTime');
	$("progress").attr("value", current);
		}

function searchSong (event){
	event.preventDefault();
	var searchTerm = $(".searchInput").val();

	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?q=${searchTerm}&type=track`,
		success: foundSong,
		error: handleError
	})
}


function foundSong(response){
	console.log(response);
	var title = response.tracks.items[0].name;
	var artist = response.tracks.items[0].artists[0].name;
	var albumUrl = response.tracks.items[0].album.images[0].url;
	var album = `<img src="${albumUrl}" />`;
	var song = response.tracks.items[0].preview_url;

	$(".title").html(title);
	$(".author").html(artist);
	$(".cover").html(album);
	console.log(song);
	$(".js-player").attr("src", song);
	
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?q=${artist}&type=artist`,
		success: foundArtist,
		error: handleError
	})

}

function foundArtist(response){
	console.log(response);
	var headshot = response.artists.items[0].images[0].url;
	var artist = response.artists.items[0].name;
	var popularity = response.artists.items[0].popularity;
	var followers = response.artists.items[0].followers.total;
	//populate genres
	var genres = [];
	$.each(response.artists.items[0].genres, function(genre){
		genres.push(response.artists.items[0].genres[genre]);
	});
	
	$(".js-artist-pop").html(popularity);
	$(".js-artist-followers").html(followers);
	$(".js-artist-genres").html(genres);
	$(".js-artist-genres").html(`${artist} Info`);
	$(".js-artist-headshot").attr("src", headshot);

	$(".author").on("click", function(){
		$('.modal').modal('toggle');
	})
	
	console.log(headshot);
	console.log(artist);
	console.log(genres);
	console.log(popularity);
	console.log(followers);


}


function handleError(response){
	console.error("Respone Error");
	console.log(response);


}





















