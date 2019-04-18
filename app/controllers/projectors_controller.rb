class ProjectorsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @projectors = Projector.all
    end
    
    def show
        @projector = Projector.find(params[:id])
    end
    
    def new
        @projector  = Projector.new
    end
    
    def edit
        @projector = Projector.find(params[:id])
    end
    
    def create
        @projector = Projector.new(projector_params)
        
        if @projector.save
            redirect_to @projector
        else
            render 'new'
        end
    end
   
    def update
        @projector = Projector.find(params[:id])
        
        if @projector.update(projector_params)
            redirect_to @projector
        else
            render 'edit'
        end
    end
    
    def destroy
        @projector = Projector.find(params[:id])
        @projector.destroy
        
        redirect_to projectors_path
    end
    
    private
        def projector_params
            params.require(:projector).permit(:manufacture, :model, :serial, 
            :ahc_number, :classroom, :mount_type, :lamp_type, :throw_distance, 
            :date_install, :date_checked, :lamp_change, :total_lamp_hours, :repair_date, :date)
        end
end
