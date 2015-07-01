class SistemaController < ApplicationController
	def log_out
		if user_signed_in?
		@currentuser = current_user.login
		else 
		redirect_to new_user_session_path
		end
	end
end