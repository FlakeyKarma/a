module CurrentUserConcern
	extend ActiveSupport::Concern
	
	def current_user
		super || guestU
	end
	def guestU
		OpenStruct.new(name: "UserA", first_name: "User", last_name: "A", email: "apple@Yeblika.ru")
	end
end