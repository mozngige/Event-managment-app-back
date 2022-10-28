class ApplicationController < ActionController::API
  include ActionController::Cookies
  wrap_parameters format: [] 
  # rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  # before_action :authorized
 
  
  private

  # def current_user
  #   user = User.find_by(id: session[:user_id])
  #   render json: user  
  # end 
  
  # def render_unprocessable_entity_response(exception)
  #   render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  # end
  
  # def authorized
  # 	@user = User.find_by(id: session[:user_id])
  # 	render json: {errors: ["Not authorized"]}, status: :unauthorized unless session.include? :user_id
  # end
end
