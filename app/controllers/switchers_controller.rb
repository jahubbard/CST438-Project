class SwitchersController < ApplicationController
    def index
        @switchers = Switcher.all
    end
    
    def show
        @switcher = Switcher.find(params[:id])
    end
    
    def new
    end
    
    def create
        @switcher = Switcher.new(computer_params)
        
        @switcher.save
        redirect_to @switcher
    end
    
    private
        def computer_params
            params.require(:switcher).permit(:manufacture, :model, :serial, 
            :classroom, :ahc_number, :audio)
        end
end
