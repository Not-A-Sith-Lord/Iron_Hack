function countCountries (country, array) {
	var counter = 0;

	array.forEach(function (aCountry) {
		if (aCountry === country) {
			counter += 1
		}
	})
	return counter

}

module.exports = countCountries