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
end
