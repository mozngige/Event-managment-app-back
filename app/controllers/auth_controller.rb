class AuthController < ApplicationController
    def authorize
		user = User.find(session[:user_id])
		if user.is_admin == true
			render json: {success: 'authorized'}, status: :accepted
		else
			render json: {errors: ["Not authorized"]}, status: :unauthorized
		end
	end
end
