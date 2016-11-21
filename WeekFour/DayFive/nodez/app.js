const express = require("express");
const mongoose = require("mongoose");

mongoose.connect("mongodb://localhost/blahhhh");

const Pokemon = mongoose.model("Pokemon", { 
	name: "string",
	types: "string",
	description: "string"


});

var fera = new Pokemon({name: "fhfhfhfhf", types: "aqua"});
fera.save();

var pika = new Pokemon({name: "fhfhfdaada", types: "lit"});
pika.save();


var app = express();

app.set("view engine", "ejs");
app.use(express.static('public'));

app.get("/", function (requestThing, responseThing){
	Pokemon.find(function (errorThing, pokemonList){
		responseThing.render("home.html.ejs", {pokemonList});
	});
	
});

app.get("/about", function (requestThing, responseThing){
	responseThing.render("about.html.ejs");
});

app.listen(3000);