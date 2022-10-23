class UserProfilesController < ApplicationController




    def create
        user_profile= UserProfile.create!(user_profile_params)
      
        render json: user_profile, status: :created
    end

    def show
        user_profile = find_profile
        render json: user_profile, status: :created
    end
    def update
        user_profile = find_profile
        user_profile.update(user_params)
        render json: user_profile

    private
    def find_profile
        UserProfile.find(params[:user_id])
    end

    def user_profile_params
        params.permit(:user_id,:full_name,:avatar_img,:phone_number,:bio,:gender)
    end


end
