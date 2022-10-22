class AboutsController < ApplicationController
    def index
render json: About.all
    end
end
