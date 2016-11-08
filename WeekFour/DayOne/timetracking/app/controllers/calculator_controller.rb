class CalculatorController < ApplicationController
	def add_form 
		render "add_form"
	end

	def addition
		@first_num = params[:first_num].to_i
		@second_num = params[:second_num].to_i
		@result = @first_num + @second_num
		render "results"
	end
end
