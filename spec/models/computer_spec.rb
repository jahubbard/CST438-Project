require 'rails_helper'

RSpec.describe Computer, type: :model do
    let(:computer) { FactoryBot.create(:computer) }
    
    it "has a valid factory" do
        expect(computer).to be_valid
    end
end