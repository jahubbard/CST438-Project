class TvsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @tvs = Tv.all
    end
    
    def show
        @tv = Tv.find(params[:id])
    end
    
    def new
        @tv  = Tv.new
    end
    
    def edit
        @tv = Tv.find(params[:id])
    end
    
    def create
        @tv = Tv.new(tv_params)
        
        if @tv.save
            redirect_to @tv
        else
            render 'new'
        end
    end
   
    def update
        @tv = Tv.find(params[:id])
        
        if @tv.update(tv_params)
            redirect_to @tv
        else
            render 'edit'
        end
    end
    
    def destroy
        @tv = Tv.find(params[:id])
        @tv.destroy
        
        redirect_to tvs_path
    end
    
    private
        def tv_params
            params.require(:tv).permit(:manufacture, :model, :serial, 
            :ahc_number, :classroom, :date_install, :model_year)
        end
end
