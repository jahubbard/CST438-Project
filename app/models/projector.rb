class Projector < ApplicationRecord
    validates :manufacture, presence: { message: "Enter Manufacture." }
    validates :model, presence: { message: "Enter Model Number." }
    validates :model_year, presence: {message: "Enter a Model Year."}
    validates :serial, presence: { message: "Enter Serial Number." }
    validates :ahc_number, presence: { message: "Enter AHC Number." }
    validates :classroom, presence: { message: "Enter Classroom Number." }
    validates :mount_type, presence: { message: "Enter Mount Type." }
    validates :lamp_type, presence: { message: "Enter Lamp Type." }
    validates :throw_distance, presence: { message: "Enter Throw Distance." }
    validates :date_install, presence: { message: "Enter Date Installed." }
    validates :date_checked, presence: { message: "Enter Date Checked." }
    validates :lamp_change, presence: { message: "Enter Lamp Change Date." }
    validates :total_lamp_hours, presence: { message: "Enter Total Lamp Hours." }
    validates :repair_date, presence: { message: "Enter Date of Repair." }
end
