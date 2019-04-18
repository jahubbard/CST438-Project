class Camera < ApplicationRecord
    validates :manufacture, presence: { message: "Enter Manufacture." }
    validates :model, presence: { message: "Enter Model Number." }
    validates :serial, presence: { message: "Enter Serial Number." }
    validates :classroom, presence: { message: "Enter Classroom." }
    validates :ahc_number, presence: { message: "Enter AHC Number." }
end
