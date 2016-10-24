
require_relative("../lib/string_calculator.rb")


RSpec.describe StringCalculator do
	describe "#add" do 

	the_calc = StringCalculator.new 

		# before :each do
		# 		the_calc = StringCalculator.new 
		# end
		# or
		# let :the_calc do
		# 	StringCalculator.new 
		# end

		it "adds numbers seperated by ," do 
			expect(the_calc.add("7,7")).to eq(14)
			expect(the_calc.add("8,4")).to eq(12)
			expect(the_calc.add("8,4,10")).to eq(22)
			expect(the_calc.add("22,4,10")).to eq(36)
		end

		it "Returns the number for single number" do 
		 	expect(the_calc.add("8")).to eq(8)
		end

		it "Returns 0 for empty string " do 
		 	expect(the_calc.add(" ")).to eq(0)
		end

		it "returns 0 when no argument given" do
		 	expect(the_calc.add("")).to eq(0)
		end
		it "returns 0 when 0 given" do
		 	expect(the_calc.add("0")).to eq(0)
		end
		it "Adds numbers seperated by dollar signs " do
		 	expect(the_calc.add("7$7")).to eq(14)
		 	expect(the_calc.add("7$7$10")).to eq(24)
		end
		it "Adds numbers seperated by dollar signs and commas " do
		 	expect(the_calc.add("7$7,$0,5")).to eq(19)
		 	expect(the_calc.add("7$7,10")).to eq(24)
		end
	end
end