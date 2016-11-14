console.log("This is the console");
alert("ALEEEEERT");

$(document).ready(function () { 

$(".js-button-thing").on("click", function(){
	$("body").append("<img src='media/kenny.gif'/>")
});



$(".js-pizza").on("click", function () {
	$("small").append("<p>PIZZA PIZZA</p>")

});

$(".bold").on("click", function () {
	$("#js-id").append(`
		<span> EMPANADA TIME </span>
		<a href="#"> SEE MORE EMPANADAS </a>
		`);
	});

function titleMessage(){
	alert("Cookies!");
};

$(".js-tacos").on("click", function(){
		$("p").empty();
});

$(".vanish").on("click", function(){
	$("div").not(".vanish").fadeToggle()

});

$(".unicorn").on("click", function(){
	 $("div").toggleClass("unicorn")
	 $(".uni").animate({marginLeft: 10000}, 8000, function(){
	 	$(".uni").animate({marginRight: 10000}, 1);
	 });

})

});

var content = ` <div class="popup">
					<h2> Have some cookies. </h2>
					<p>Cookies don't lie</p> `

