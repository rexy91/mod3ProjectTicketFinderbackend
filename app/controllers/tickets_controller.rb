class TicketsController < ApplicationController

    def index
        tickets = Ticket.all
        render json: tickets, :except => [:created_at, :updated_at] 
    end

    def create
        byebug
        ticket = Ticket.create(ticketParams)
        render json:ticket
        
    end

    def ticketParams
        params.permit(:name, :time, :image, :user_id)
    end

end
