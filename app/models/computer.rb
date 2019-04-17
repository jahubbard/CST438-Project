class Computer < ApplicationRecord
    validates :manufacture, presence: { message: "Enter Manufacture" }
    validates :model, presence: { message: "Enter Model" }
    validates :serial, presence: { message: "Enter Serial" }
    validates :name, presence: { message: "Enter Name" }
    validates :classroom, presence: { message: "Enter Classroom" }
    validates :check_date, presence: { message: "Enter Checked Date" }
end
