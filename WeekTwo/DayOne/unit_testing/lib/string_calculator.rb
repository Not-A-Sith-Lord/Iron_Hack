


class StringCalculator 

def initialize 

end


def add(string)

total = 0
string.gsub!("$",",")
array = string.split(",")


array.each {|x|
total += x.to_i
}


total


end

end