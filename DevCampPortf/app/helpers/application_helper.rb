module ApplicationHelper
	def login_helper
		"<br>".html_safe +
		if current_user.is_a?(User)
			link_to "Logout", destroy_user_session_path, method: :delete
		else
			(link_to "Join us!", new_user_registration_path) + "<br>".html_safe +
			(link_to "Sign back in!", new_user_session_path)
		end
	end
	def sourceH(layout_name)
		    if session[:source]
		    	a = "Thanks for visiting me on the #{layout_name} page from #{session[:source]}!!"
				content_tag(:p, a, class: "sourceG")
		    end
	end
	def copRi_g
		FlakeykarmasViToo::Rend.copyR '♠FlakeyKarma♠', 'All rights reserved boy'
	end
end
