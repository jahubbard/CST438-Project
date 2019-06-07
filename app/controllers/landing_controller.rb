class LandingController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @replace_computers = get_replace_computers
    @check_computers = get_checked_computers
    @computer_count = get_computer_count
    @replace_projectors = get_replace_projectors
    @replace_lamps = get_replace_lamps
    @projector_count = get_projector_count
    @projector_hours = get_projector_hours
    @camera_count = get_camera_count
    @replace_cameras = get_replace_cameras
    @replace_switchers = get_replace_switchers
    @switcher_count = get_switcher_count
  end
  
  private
    
    def get_replace_computers
      Computer.where("model_year <= ?", 5.years.ago).order(:created_at).limit(3)
    end
    
    def get_checked_computers
      Computer.where("check_date >= ?", 1.month.ago).order(:created_at).limit(3)
    end
    
    def get_computer_count
      Computer.distinct.count('serial')
    end
    
    def get_replace_projectors
      Projector.where("model_year <= ?", 5.years.ago).order(:created_at).limit(3)
    end
    
    def get_replace_lamps
      view_replace = 5000
      ep_replace = 3000
      Projector.where("manufacture = 'Viewsonic' AND cast(total_lamp_hours as integer) >= cast(? as integer)", view_replace).
      or(Projector.where("manufacture = 'Epson' AND cast(total_lamp_hours as integer) >= cast(? as integer)", ep_replace)).
      order(total_lamp_hours: :desc).limit(3)
    end
    
    def get_projector_count
      Projector.distinct.count('serial')
    end
    
    def get_projector_hours
      replace_hours = 1500
      Projector.where("total_lamp_hours >= ?", replace_hours).order(total_lamp_hours: :desc).limit(3)
    end
    
    def get_replace_cameras
      Camera.where("model_year <= ?", 5.years.ago).order(:created_at).limit(3)
    end
    
    def get_camera_count
      Camera.distinct.count('serial')
    end
    
    def get_replace_switchers
      Switcher.where("model_year <= ?", 5.years.ago).order(:created_at).limit(3)
    end
    
    def get_switcher_count
      Switcher.distinct.count('serial')
    end
end
