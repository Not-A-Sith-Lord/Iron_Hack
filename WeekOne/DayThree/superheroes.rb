#superman = ["Superman", ["flight", "superstrength", "x-rays"], "Clark Kent", "Metropolis"]

superman = {
	:name => "Superman",
	:superpowers => ["flight", "superstrength", "x-rays"],
	:real_name => "Clark Kent",
	:city => "Metropolis",
	:comics_company => "DC",
	:nemesis => "Lex Luther"
}

superheroes = [0, 1, 2, { :allies => [0, 1, { :superpowers => [0, { :name => "teleportation"}]}]}]

p superheroes[3][:allies][2][:superpowers][1][:name]