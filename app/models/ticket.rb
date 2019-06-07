class Ticket < ApplicationRecord
    validates :classroom, presence: { message: "Enter Classroom Number." }
    validates :proj_hours, presence: { message: "Enter Projector Hours." }
    validates :screen_cond, presence: { message: "Enter Screen Condition." }
    validates :tv_cond, presence: { message: "Enter TV Condition." }
    validates :monitor_cond, presence: { message: "Enter Monitor Condition." }
    validates :monitor_size, presence: { message: "Enter Monitor Size." }
    validates :computer_cond, presence: { message: "Enter Condition" }
end
