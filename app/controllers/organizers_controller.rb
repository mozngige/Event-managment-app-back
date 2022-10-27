class OrganizersController < ApplicationController
    # before_action :authenticate_user!
    
    def index
        organizer = Organizer.all
        render json: organizer 
    end

    # def show
    #     user = User.all
    #     render json: user
    # end

    private

    def this_user
        current_user 
    end 
end
