class TicketsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @tickets = Ticket.all
    end
    
    def show
        @ticket = Ticket.find(params[:id])
    end
    
    def new
        @ticket  = Ticket.new
    end
    
    def edit
        @ticket = Ticket.find(params[:id])
    end
    
    def create
        @ticket = Ticket.new(ticket_params)
        
        if @ticket.save
            redirect_to @ticket
        else
            render 'new'
        end
    end
   
    def update
        @ticket = Ticket.find(params[:id])
        
        if @ticket.update(ticket_params)
            redirect_to @ticket
        else
            render 'edit'
        end
    end
    
    def destroy
        @ticket = Ticket.find(params[:id])
        @ticket.destroy
        
        redirect_to tickets_path
    end
    
    private
        def ticket_params
            params.require(:ticket).permit(:classroom, :proj_hours, :screen_cond, 
            :tv_cond, :monitor_cond, :monitor_size, :computer_cond)
        end
end
