class SiteController < ApplicationController

	def home
		@events = Concert.all
		@this_month = []

		 @events.each do |concert|
			if (concert.date > Date.today) && (concert.date < Date.today + 1.month)	
				@this_month.push(concert)
		end
	end
		render "home"
	end
end
