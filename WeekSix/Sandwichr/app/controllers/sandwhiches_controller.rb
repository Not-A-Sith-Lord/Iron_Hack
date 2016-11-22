class SandwhichesController < ApplicationController
	protect_from_forgery with: :null_session

	def index
		sandwhiches = Sandwhich.all
		render json: sandwhiches
	end

	def create
		sandwhich = Sandwhich.create(sandwhich_params)
		render json: sandwhich

	end

	def show 
		sandwhich = Sandwhich.find(params[:id])
		render json: sandwhich
	end

	def update 
		sandwhich = Sandwhich.find(params[:id])
		sandwhich.update(sandwhich_params)
		render json: sandwhich
	end

	def destroy
		sandwhich = Sandwhich.find(params[:id])
		sandwhich.destroy
		render json: sandwhich
	end

	private

	def sandwhich_params
		params.require(:sandwhich).permit(:name, :bread_type)
	end
end
