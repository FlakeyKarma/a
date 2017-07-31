class Portfolio < ApplicationRecord
	
	has_many :technologies
	accepts_nested_attributes_for :technologies,
		allow_destroy: true,
		reject_if: lambda {|attrs| attrs['name'].blank?}
	
	include Placeholder
	validates_presence_of :title, :body
	
	mount_uploader :thumb_image, PortfolioUploader
	mount_uploader :main_image, PortfolioUploader
	
	def self.A
		where(subtitle: 'Yo, I\'m Angular')
	end
	
	scope :rub, -> {where(subtitle: 'Ruby on Rails dawg')}
	
	after_initialize :set_defaults
	
	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
		self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
	end
	
	def self.by_position
		order("position ASC")
	end
end