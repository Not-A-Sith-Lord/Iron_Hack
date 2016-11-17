


$(document).ready(function(){

findLocation();


});

function findLocation(){

	if ("geolocation" in navigator){
		console.log("geolocation present");
		navigator.geolocation.getCurrentPosition(showPosition, showError)

	} else {
		console.log("No geolocation present");
	}
}

function showPosition(locInfo){
	console.log(locInfo);
	var lat = locInfo.coords.latitude
	var long = locInfo.coords.longitude
	var map = `
	<img src="https://maps.googleapis.com/maps/api/staticmap?zoom=16&size=300x400&center=${lat},${long}"/>`

	$(".js-map").append(map);
	$(".js-heading").html("There you are!");

}

function showError(errorInfo){
	console.log(errorInfo);
}
