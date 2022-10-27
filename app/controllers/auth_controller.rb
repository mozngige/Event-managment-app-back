class AuthController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_logged_in

    def authorize
		user = User.find(session[:user_id])
		if user.is_organiser == true
			render json: {success: 'authorized'}, status: :accepted
		else
			render json: {errors: ["Not authorized"]}, status: :unauthorized
		end
	end

    def not_logged_in
		render json: "Please log in first!", status: :not_found
	end
end
