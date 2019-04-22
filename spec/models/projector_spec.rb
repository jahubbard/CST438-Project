require 'rails_helper'

RSpec.describe Projector, type: :model do
    let(:projector) { FactoryBot.create(:projector) }
    
    it "has a valid factory" do
        expect(projector).to be_valid
    end
end