module CurrentUserConcern
	extend ActiveSupport::Concern
	
	def current_user
		super || guestU
	end
	def guestU
		guest = GuestUser.new
		guest.name = "Guest User"
		guest.first_name = "Guest"
		guest.last_name = "User"
		guest.email = "no@nyet.ru"
		guest
	end
end