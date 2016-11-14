class Comment < ApplicationRecord

	belongs_to :ticketmaster
	
	validates_format_of :name, :with => /\A[-a-z]+\z/
	validates :name, presence: true
	validates :content, presence: true
	
end
