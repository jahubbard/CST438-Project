class Tv < ApplicationRecord
    validates :manufacture, presence: { message: "Enter Manufacture." }
    validates :model, presence: { message: "Enter Model Number." }
    validates :model_year, presence: {message: "Enter a Model Year."}
    validates :serial, presence: { message: "Enter Serial Number." }
    validates :ahc_number, presence: { message: "Enter AHC Number." }
    validates :classroom, presence: { message: "Enter Classroom Number." }
    validates :date_install, presence: { message: "Enter Date Installed." }
end
