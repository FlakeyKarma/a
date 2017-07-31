module DefaultPageContent
	extend ActiveSupport::Concern
	
	included do
		before_action :set_title
	end
	
	def set_title
		@page_title = "Developer Camp Portfolio | My Portfolio Website"
		@seo_keywords = "Flakey Karma's Portfolio"
	end
end