module FlakeyKarmasTool
	class Rend
		def self.copyright n, m
			"&copy; #{Time.now.year} | <b>#{n}</b> #{m}".html_safe
		end
	end
end