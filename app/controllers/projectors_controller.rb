class ProjectorsController < ApplicationController
    def show
        @projector = Projector.find(params[:id])
    end
    
    def new
    end
    
    def create
        @projector = Projector.new(computer_params)
        
        @projector.save
        redirect_to @projector
    end
    
    private
        def computer_params
            params.require(:projector).permit(:manufacture, :model, :serial, 
            :ahc_number, :classroom, :mount_type, :lamp_type, :throw_distance, 
            :date_install, :date_checked, :lamp_change, :repair_date, :date)
        end
end
