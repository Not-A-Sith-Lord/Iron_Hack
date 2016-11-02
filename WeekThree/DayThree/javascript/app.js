var countCountries = require("./lib/count-countries.js");
var countries = ["Puerto Rico", "USA", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"];

console.log("");
console.log("Countries represented in this room");
console.log("----------------------------------");


// countries.each do |a_country|
// 	puts "Some of us identify with #{a_country}"
// 	end

// countries.forEach(function (aCountry) {
// 	console.log(`Some of us are from ${aCountry}!!`)
// });

// var uppercaseCountries = countries.map(function (aCountry) {
// 	return aCountry.toUpperCase();
// });

//  uppercaseCountries.forEach(function (aCountry) {
// 	console.log(`Some of us are from ${aCountry}`)
// });


// 	puts ""
console.log("");



function averageColon(string) {
	var average = 0;
    if (string != null){
	var split = string.split(/[:&]/)
	split.forEach(function (number) {
		average = average + parseInt(number)
	});
	return average / split.length
} else {
	return 0
}
	
}

var numbers = '80:70:90:100';

console.log (averageColon(numbers) === 85);
console.log (averageColon() === 0 );
console.log (averageColon('80&70&90&100') === 85);
console.log (averageColon('80&70:90&100') === 85);
console.log (averageColon(undefined) === 0 );





