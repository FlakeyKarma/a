module ApplicationHelper
  def login_helper a
    if current_user.is_a?(GuestUser)
    	(link_to "//Register", new_user_registration_path, class: a) +
      " ".html_safe +
      (link_to "//Login", new_user_session_path, class: a)
    else
      link_to "//Logout", destroy_user_session_path, method: :delete, class: a
    end
  end

  def sourceH(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copR
    GemV::Renderer.copyright '♠Flakey Karma♠', 'All rights reserved'
  end
end