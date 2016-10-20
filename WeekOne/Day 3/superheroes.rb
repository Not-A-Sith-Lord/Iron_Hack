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



hash = {
	:wat => [0, 1, {:wut => [0, [ [0, 1, 2, 3, 4, 5, 6, 7, 8, {:bbq => "It worked!"}]]]}]
}

p hash[:wat][2][:wut][1][0][9][:bbq]

arr = [[0, 1, 2, 3, 4, {:secret => {:unlocked => [0, "It also worked"]}}]]

p arr[0][5][:secret][:unlocked][1]