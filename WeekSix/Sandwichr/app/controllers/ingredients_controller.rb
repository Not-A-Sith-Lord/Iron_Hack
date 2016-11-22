class IngredientsController < ApplicationController
	protect_from_forgery with: :null_session

	def index
		blah = Ingredient.all
		render json: blah
	end

	def create 
		blah = Ingredient.create(ingredient_params)
		render json: blah
	end

	def show
		blah = Ingredient.find(params[:id])
		render json: blah
	end


	def update 
		blah = Ingredient.find(params[:id])
		blah.update(ingredient_params)
		render json: blah
	end

	def destroy 
		blah = Ingredient.find(params[:id])
		blah.destroy
		render json: blah
	end


	private

	def ingredient_params
		params.require(:ingredient).permit(:name, :ordered_by)
	end

end
