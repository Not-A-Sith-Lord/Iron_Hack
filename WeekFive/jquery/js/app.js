console.log("This is the console");
alert("ALEEEEERT");

$(document).ready(function () { 

$(".js-button-thing").on("click", function(){
	$("body").append("<img src='media/kenny.gif'/>")
});

$(".bold").on("click", function(){

});

$(".js-pizza").on("click", function () {
	alert("PIZZA PIZZA");
});

$(".empanada").on("click", function () {
	alert("EMPANADAS");
});

function titleMessage(){
	alert("Cookies!");
};

$("#title").on("click", titleMessage);

});