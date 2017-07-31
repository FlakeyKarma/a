class GuidesController < ApplicationController
	def book
		@books = ['Fountainhead', 'Deep Work', 'Rails Way']
	end
end