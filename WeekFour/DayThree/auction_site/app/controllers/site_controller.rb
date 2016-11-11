class SiteController < ApplicationController

def home
	@users = User.limit(10)
	@products = Product.limit(10)
	render 'home'

end




end
