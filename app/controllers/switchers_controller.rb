class SwitchersController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @switchers = Switcher.all
    end
    
    def show
        @switcher = Switcher.find(params[:id])
    end
    
    def new
        @switcher = Switcher.new
    end
    
    def edit
        @switcher = Switcher.find(params[:id]) 
    end
    
    def create
        @switcher = Switcher.new(switcher_params)
        
        if @switcher.save
            redirect_to @switcher
        else
            render 'new'
        end
    end
    
    def update
        @switcher = Switcher.find(params[:id])
        
        if @switcher.update(switcher_params)
            redirect_to @switcher
        else
            render 'edit'
        end
    end
    
    def destroy
        @switcher = Switcher.find(params[:id])
        @switcher.destroy
        
        redirect_to switchers_path
    end
    
    
    private
        def switcher_params
            params.require(:switcher).permit(:manufacture, :model, :serial, 
            :classroom, :ahc_number, :audio, :model_year)
        end
end
