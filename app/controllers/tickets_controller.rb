class TicketsController < ApplicationController
    def index
        render json: Ticket.all, status: :ok
    end

    def create
        ticket = Ticket.create!(ticket_params)
        render json: ticket,status: :created
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
        params.permit(:ticket_no, :user_id, :event_id, :is_vip, :number_of_vip_tickets, :is_regular, :number_of_regular_tickets)
    end

    def ticket_updateparams
        params.permit(:is_vip, :number_of_vip_tickets, :is_regular, :number_of_regular_tickets)
    end
end
