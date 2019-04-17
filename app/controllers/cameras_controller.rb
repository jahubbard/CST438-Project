class CamerasController < ApplicationController
    def index
        @cameras = Camera.all
    end
    
    def show
        @camera = Camera.find(params[:id])
    end
    
    def new
        @camera = Camera.new
    end
    
    def edit
       @camera = Camera.new(camera_params) 
    end
    
    def create
        @camera = Camera.new(camera_params)
        
        if @camera.save
            redirect_to @camera
        else
            render 'new'
        end
    end
    
    def update
        @camera = Camera.find(params[:id])
        
        if @camera.update(camera_params)
            redirect_to @camera
        else
            render 'edit'
        end
    end
    
    def destroy
        @camera = Camera.find(params[:id])
        @camera.destroy
        
        redirect_to cameras_path
    end
    
    private
        def camera_params
            params.require(:camera).permit(:manufacture, :model, :serial, 
            :classroom, :ahc_number)
        end
end
