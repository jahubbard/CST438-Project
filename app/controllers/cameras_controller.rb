class CamerasController < ApplicationController
    def index
        @cameras = Camera.all
    end
    
    def show
        @camera = Camera.find(params[:id])
    end
    
    def new
    end
    
    def create
        @camera = Camera.new(computer_params)
        
        @camera.save
        redirect_to @camera
    end
    
    private
        def computer_params
            params.require(:camera).permit(:manufacture, :model, :serial, 
            :classroom, :ahc_number)
        end
end
