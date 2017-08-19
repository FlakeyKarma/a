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

  def sourceH(styles)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{styles} layout, and if you'd like to, go ahead and #{link_to 'talk to me', talk_to_me_path} if you'd like to work together."
      content_tag(:div, greeting.html_safe, class: styles)
    end
  end

  def copR
    GemV::Renderer.copyright '♠Flakey Karma♠', 'All rights reserved'
  end
  
  def nav_items
    [
      {
        url: root_path,
        title: '//127.0.0.1'
      },
      {
        url: about_me_path,
        title: '//AboutMe'
      },
      {
        url: talk_to_me_path,
        title: '//ContactMe'
      },
      {
        url: blogs_path,
        title: '//BlogDawg'
      },
      {
        url: portfolios_path,
        title: '//Portfolioli'
      },
      {
        url: tech_news_path,
        title: '//DankMemes'
      },
    ]
  end

  def nav_helper style, tag_type
		nav_links = ''
		
		nav_items.each do |item|
			nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
			
		end

		nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alertG alert
    end
  end

  def alertG msg
    js add_gritter(msg, title: "Cognizant Portfolio Page", sticky: false)
  end

end