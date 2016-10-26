require_relative("../lib/password_checker.rb")

RSpec.describe PasswordChecker  do 
	describe "#check_password" do
		checker = PasswordChecker.new
		it "returns true for valid passwords" do 
			

			expect( checker.check_password("ariel@gmail.com", "a87ghL$8")).to eq(true)
			expect( checker.check_password("ariel@gmail.com", "A59mOL3%")).to eq(true)

		end

		it "returns false for passwords shorter than 8 characters" do
			expect( checker.check_password("ariel@gmail.com", "w3te$Lr")).to eq(false)

		end

		it "returns false for passwords without letters" do 
			expect( checker.check_password("ariel@gmail.com", "$4&42917")).to eq(false)
		end


		it "returns false for passwords without numbers" do 
			expect( checker.check_password("ariel@gmail.com", "Lb^*@boK")).to eq(false)
		end


		it "returns false for passwords without symbols" do 
			expect( checker.check_password("ariel@gmail.com", "w3teB8910")).to eq(false)
			# expect( checker.check_password("ariel@gmail.com", "w3teB&910")).to eq(true)
		end

		it "returns false for passwords without uppercase letters" do 
			expect( checker.check_password("ariel@gmail.com", "w3teb%&/")).to eq(false)
		end

		it "returns false for passwords without lowercase letters" do 
			expect( checker.check_password("ariel@gmail.com", "W3TE$LR$")).to eq(false)
		end

		  # BONUS
	    it "returns false for passwords with the email username" do
	      expect( checker.check_password("ariel@gmail.com", "ariel56L$")).to eq(false)
	    end

	    it "returns false for passwords with the domain" do
	      expect( checker.check_password("ariel@gmail.com", "gmail.com56L$")).to eq(false)
		end
	end
end