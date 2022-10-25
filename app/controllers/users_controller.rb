class UsersController < ApplicationController
# rescue_from ActiveRecord::RecordNotFound, with: :unfound_response
    #skip_before_action :authorize, only: [ :create,:show]
    
    def index
        render json: User.all,status: :ok
    end

    def show
        if current_user
          render json: current_user, status: :ok
        else
          render json: "No current session stored", status: :unauthorized
        end
    end 

    def create
        user = User.create(user_params)
          if user.valid?
            session[:user_id] = user.id # this is the piece that logs a user in and keeps track of users info in subsequent requests.
            render json: user, status: :ok
          else
            render json: user.errors.full_messages, status: :unprocessable_entity
          end
    end

    private

    def user_params
        params.permit(:email, :username, :password, :password_confirmation, :is_organiser)
    end
end
