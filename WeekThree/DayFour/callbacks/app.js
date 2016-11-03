"use strict"; 
var read = require("read");
var fs = require("fs");




console.log("");
console.log("START OF THE PROGRAM");


fs.readFile("./movies.txt", "utf8", function (error, contentsOfFile) {
	console.log("error", error);
		console.log("contents", contentsOfFile);

	if (error) {
		console.log("Oh no! There was a file read error.");
	}

	else {
		var moviesArray = contentsOfFile.split("\n");
	}
})


// function displayName(firstArg, inputName){
// 	console.log(`hello ${inputName}`)
// }

// read({prompt: "What is your name?"}, displayName);


// function after5seconds () {
// 	console.log("5 Seconds")
// }

// setTimeout(after5seconds, 5000);

setTimeout(function () {
	console.log("2 seconds are up")
}, 2000);

console.log("");
console.log("End of PROGRAM");