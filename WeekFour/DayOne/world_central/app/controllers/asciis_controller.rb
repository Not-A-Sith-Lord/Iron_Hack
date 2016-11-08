class AsciisController < ApplicationController

	def new
		render "new"
	end

	def create 
		@input = params[:asciis]
		a = Artii::Base.new
		@converted = a.asciify(@input)
		
		render "create"
	end

end
