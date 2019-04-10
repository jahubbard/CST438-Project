class ComputersController < ApplicationController
    def show
        @computer = Computer.find(params[:id])
    end
    
    def new
    end
    
    def create
        @computer = Computer.new(computer_params)
        
        @computer.save
        redirect_to @computer
    end
    
    private
        def computer_params
            params.require(:computer).permit(:manufacture, :model, :serial, :name, :classroom, :check_date)
        end
end
