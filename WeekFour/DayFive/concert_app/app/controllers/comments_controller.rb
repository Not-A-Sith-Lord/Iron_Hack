class CommentsController < ApplicationController

	def new
		@concert = Concert.find(params[:id])
		@comment = @concert.comments.new
		render 'new'
	end

	def create
		@concert = Concert.find(params[:id])
		@comment = @concert.comments.new(
			name: params[:comment][:name],
			content: params[:comment][:content])
		
		if @comment.save
			redirect_to concert_path(@concert)
		else
			render 'new'
		end

	end	

end
