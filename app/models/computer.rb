class Computer < ApplicationRecord
   
    validates :manufacture, presence: { message: "Enter Manufacture." }
    validates :model, presence: { message: "Enter Model Number." }
    validates :serial, presence: { message: "Enter Serial Number." }
    validates :name, presence: { message: "Enter Name." }
    validates :classroom, presence: { message: "Enter Classroom Number." }
    validates :check_date, presence: { message: "Enter Checked Date" }
end


