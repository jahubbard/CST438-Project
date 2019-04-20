class LandingController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @replace_computers = get_replace_computers
    @check_computers = get_checked_computers
    @replace_projectors = get_replace_projectors
    @computer_count = get_computer_count
    @projector_count = get_projector_count
    @camera_count = get_camera_count
    @switcher_count = get_switcher_count
  end
  
  private
    
    def get_replace_computers
      Computer.where("model_year <= ?", 5.years.ago).order(:created_at).limit(5)
    end
    
    def get_checked_computers
      Computer.where("check_date >= ?", 1.month.ago).order(:created_at).limit(5)
    end
    
    def get_computer_count
      Computer.distinct.count('serial')
    end
    
    def get_replace_projectors
      Projector.where("model_year <= ?", 5.years.ago).order(:created_at).limit(5)
    end
    
    def get_projector_count
      Projector.distinct.count('serial')
    end
    
    def get_camera_count
      Camera.distinct.count('serial')
    end
    
    def get_switcher_count
      Switcher.distinct.count('serial')
    end
end
