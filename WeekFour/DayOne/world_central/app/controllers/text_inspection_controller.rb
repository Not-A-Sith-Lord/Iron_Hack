class TextInspectionController < ApplicationController
	
	def new
		render 'new_text'
	end


  def create

    @text = params[:text_inspection][:user_text]
    @word_count = @text.split(" ").length
    @time_read = @word_count.to_f / 275

    
     render "results"

  end

end
