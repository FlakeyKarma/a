10.times do |blogs|
	Blog.create!(
		title: "My blog post #{blogs}",
		)
end

puts "10 blog posts created"

5.times do |skills|
	Skill.create!(
		title: "Rails #{skills}",
		percent_utilized: 15
		)
end

puts "5 skills created"

9.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "My great service",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
    aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
    irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
    proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x150"
		)
end

puts "9 portfolio items created"