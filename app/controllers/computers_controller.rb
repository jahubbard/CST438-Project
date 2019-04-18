class ComputersController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @computers = Computer.all
    end
    
    def show
        @computer = Computer.find(params[:id])
    end
    
    def new
        @computer = Computer.new
    end
    
    def edit
        @computer = Computer.find(params[:id])
    end
    
    def create
        @computer = Computer.new(computer_params)
        
        if @computer.save
            redirect_to @computer
        else
            render 'new'
        end
    end
    
    def update
        @computer = Computer.find(params[:id])
        
        if @computer.update(computer_params)
            redirect_to @computer
        else
            render 'edit'
        end
    end
    
    def destroy
        @computer = Computer.find(params[:id])
        @computer.destroy
        
        redirect_to computers_path
    end
    
    private
        def computer_params
            params.require(:computer).permit(:manufacture, :model, :serial, :name, :classroom, :check_date)
        end
end
