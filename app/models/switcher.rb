class Switcher < ApplicationRecord
    validates :manufacture, presence: { message: "Enter Manufacture." }
    validates :model, presence: { message: "Enter Model Number." }
    validates :serial, presence: { message: "Enter Serial Number." }
    validates :classroom, presence: { message: "Enter Classroom Number." }
    validates :ahc_number, presence: { message: "Enter AHC Number." }    
    validates :audio, presence: { message: "Enter Audio Type." }
end
