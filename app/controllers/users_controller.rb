class UsersController < ApplicationController
    # before_action :authenticate_user!
    
    def index
        user = User.all
        render json: user
    end

    def show
        user = User.find_by(id: session[:user_id])

        if user
            render json: user
        else
            render json: { error: "Not authorized" }, status: :unauthorized
        end
    end

    def create
        user = User.create!(user_params)
        if user.valid?
            render json: user, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def this_user
        current_user 
    end 

    def user_params
        params.permit(:username, :email, :password)
    end
end
