class SiteController < ApplicationController

	def home
		@concerts = Concert.all
		render "home"
	end
end
