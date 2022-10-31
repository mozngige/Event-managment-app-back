class UsersController < ApplicationController
    # skip_before_action :authorized, only: [ :create,:show]

    def index
        render json: User.all,status: :ok
    end

    def show
        user = User.find(params[:id])
        render json: user, status: :ok
    end

    def create    
        user = User.create(user_params)
        if user.valid?
          session[:user_id] = user.id
          render json: user, status: :created
        else
          render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end
   
    def me
        if current_user
          render json: current_user, status: :ok
        else
          render json: "No current session stored", status: :unauthorized
        end
    end 

    private

    def user_params
        params.permit(:email,:username, :password, :password_confirmation, :is_organiser)
    end
end
