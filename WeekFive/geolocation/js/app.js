

$(document).ready(function(){


console.debug("Finished loading page")
promptForLocation();
beginWatch();

});

function beginWatch (){
	if ("geolocation" in navigator) {
		navigator.geolocation.watchPosition(watchSuccess, watchError);
	}
}

function watchSuccess (locInfo){
	console.log("Watch location:");
	console.log(locInfo);

	var watched = `
	<li> 
	Latitude: ${locInfo.coords.latitude}
	<br>
	Longitude: ${locInfo.coords.longitude}
	</li>`;

	$(".js-watch-list").append(watched);
}

function watchError (error){
	console.log("Failed watching");
	console.log(error);
}

function promptForLocation (){
	if ("geolocation" in navigator){

		var options = {
			enableHighAccuracy: true,
			timeout: 4000
		};

		navigator.geolocation.getCurrentPosition(showPosition, showError, options) } 

	else {
		var error = `<div class="alert alert-danger" role="alert"> 
		<strong> Sorry! </strong>
		Your browser is old and can't use this site. Please upgrade to Google Chrome or something
		</div>`;

		$("body").prepend(error);
		
		
	}
}



function showPosition (locationInfo) {
	var lat = locationInfo.coords.latitude
	var long = locationInfo.coords.longitude
	var map = `
	<img src="https://maps.googleapis.com/maps/api/staticmap?zoom=16&size=300x400&center=${lat},${long}"/>`

	$(".js-map").append(map);
	$(".js-heading").html("There you are!");

	$(".js-lat").html(locationInfo.coords.latitude);
	$(".js-lng").html(locationInfo.coords.longitude);
}

function showError (errorInfo) {
	console.error("Error getting position");
	console.log(errorInfo);

	var positionErrorHtml = `
	<div class="alert alert-warning" role="alert">
	<strong> Sorry! </strong>
	There was an error in retrieving your position. 
	<button class="js-try-again"> Try again </button>
	</div> `;

	$("body").prepend(positionErrorHtml);

	$(".js-try-again").on("click", function(){
		location.reload();
	});
}









