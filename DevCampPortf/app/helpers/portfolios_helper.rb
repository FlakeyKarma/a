module PortfoliosHelper
	def image_generator(height:, width:)
		"http://placehold.it/#{height}x#{width}"
	end
	
	def portfolio_img a, b

		if a.model.main_image? || a.model.thumb_image?
			a
		elsif b == 'thumb'
			image_generator(height: '350', width: '200')
		elsif b == 'main'
			image_generator(height: '600', width: '400')
		end
	end
end