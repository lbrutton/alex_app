module SessionsHelper

	def log_in(admin)
		session[admin.id] = admin.id
	end

end
