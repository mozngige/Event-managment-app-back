class EventsController < ApplicationController

def index 
render json: Event.all
end
    def create
        event = Event.create!(event_params)
       
        render json: event, status: :created
    end

    def show
        event = find_event
        render json: event, status: :created
    end

    private
    def find_event
Event.find(params[:event_id])
    end

    def event_params
        params.permit(:category_id,:title,:event_date,:early_booking_end_date,:early_booking_price_regular,:early_booking_price_vip,:location,:regular_price,:vip_price,:vip_no_of_tickets,:regular_no_of_tickets,:banner_img,:description,:image_url1,:image_url2)
    end
end
