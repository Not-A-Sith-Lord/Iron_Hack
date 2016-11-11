class UsersController < ApplicationController


	def new

		@user = User.new
		render "new"
	end

	def create

		@user = User.new(
			:name => params[:user][:name],
			:email => params[:user][:email])
		@user.save

		redirect_to "/"

	end
end
