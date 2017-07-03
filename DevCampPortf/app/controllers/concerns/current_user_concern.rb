module CurrentUserConcern
	extend ActiveSupport::Concern
	
	def current_user
		super || guestU
	end
	def guestU
		OpenStruct.new(name: "JakeFrom StateFarm", first_name: "JakeFrom", last_name: "StateFarm", email: "apple@yeblika.ru")
	end
end