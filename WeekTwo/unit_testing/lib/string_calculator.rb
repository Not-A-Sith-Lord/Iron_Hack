


class StringCalculator 

def initialize 

end


def add(string)

total = 0
string.gsub!("$",",")
array = string.split(",")


array.each {|x|
new_x = x.to_i
total += new_x
}


total


end

end