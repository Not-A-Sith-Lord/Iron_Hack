function caesarCipher (message, shift= -3) {

	if (shift < 0) {
	return caesarCipher(message, shift + 26);
}
	
	i = 0;
	cypher = []

	 while (i < message.length) {

	if (message[i].match(/[a-z]/i)){

		x = message.charCodeAt(i);

		if ((x >= 65) && (x <= 90))
		{
				x = String.fromCharCode(((x - 65 + shift) % 26) + 65);	
		} 
		else if ((x >= 97) && (x <= 122)) 
			{
				x = String.fromCharCode(((x - 97 + shift) % 26) + 97);
			}

  	} 
  	else 
  	{ 
  		x = message[i]
  	}

  	cypher.push(x)
  	i++
  }
	return cypher.join("")
}


module.exports = caesarCipher;
