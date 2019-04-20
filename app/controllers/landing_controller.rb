class LandingController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @replace_computers = get_replace_computers
    @check_computers = get_checked_computers
  end
  
  private
    
    def get_replace_computers
      Computer.where("model_year <= ?", 5.years.ago).order(:created_at).limit(5)
    end
    
    def get_checked_computers
      Computer.where("check_date >= ?", 1.month.ago).order(:created_at).limit(5)
    end
end
