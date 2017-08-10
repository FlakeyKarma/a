module PagesHelper
	def twiPars t
		
		regex = %r{
		\b
		(
			(?: [a-z][\w-]+:
				(?: /{1,3} | [a-z0-9%] ) |
					www\d{0,3}[.] |
				[a-z0-9.\-]+[.][a-z]{2,4}/
			)
			(?:
				[^\s()<>]+ | \(([^\s()<>]+|(\([^\s()<>]+\)))*\)
			)+
			(?:
					\(([^\s()<>]+|(\([^\s()<>]+\)))*\) |
					[^\s`!()\[\]{};:'".,<>?«»“”‘’]
				)
			)
		}ix
		
		t.gsub(regex) do |u|
			"<a href='#{u}' target='_blank'>#{u}</a>"
		end.html_safe
	end
end