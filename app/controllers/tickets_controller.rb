class TicketsController < ApplicationController
    def index
        render json: Ticket.all, status: :ok
    end

   def create
        if params[:CustomerMessage].present? 
            render json: {message: "Check your phone"}
            
        elsif params[:Body][:stkCallback][:CallbackMetadata][:Item].present?
            
             render json: {message: "You have successfully secured your seats."}

        else
             render json: {message: "Please try again Later"}
        end
end

    def update
        ticket = find_ticket
        ticket.update(ticket_updateparams)
        render json: ticket
    end

    def destroy
        ticket = find_ticket
        ticket.destroy
        head :no_content
    end

    private

    def find_ticket
        Ticket.find(params[:id])
    end

    def ticket_params
        params.permit(:ticket_no, :user_id, :event_id, :number_of_vip_tickets, :number_of_regular_tickets, :amount, :phone_number)
    end

    def ticket_updateparams
        params.permit(:number_of_vip_tickets, :number_of_regular_tickets)
    end
end
