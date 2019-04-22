require 'rails_helper'

RSpec.describe Switcher, type: :model do
    let(:switcher) { FactoryBot.create(:switcher) }
    
    it "has a valid factory" do
        expect(switcher).to be_valid
    end
end