class ConcertsController < ApplicationController

	def new 
		@concert = Concert.new
		render "new"
	end

	def show
		@concert = Concert.find(params[:id])
		@comments = @concert.comments
		render :details
	end



	def create
		@concert = Concert.new(
			:artist => params[:concert][:artist],
			:description => params[:concert][:description],
			:venue => params[:concert][:venue],
			:price => params[:concert][:price],
			:date => params[:concert][:date])
		@concert.save

		
		if @concert.save

			redirect_to :home
		else
			render 'new'
		end	
	end

end
