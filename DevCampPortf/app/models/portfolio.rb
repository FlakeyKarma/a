class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image
	def self.A
		where(subtitle: 'Yo, I\'m Angular')
	end
	scope :rub, -> {where(subtitle: 'Ruby on Rails dawg')}
end