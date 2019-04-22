require 'rails_helper'

RSpec.describe Camera, type: :model do
    let(:camera) { FactoryBot.create(:camera) }
    
    it "has a valid factory" do
        expect(camera).to be_valid
    end
end