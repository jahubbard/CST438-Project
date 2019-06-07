class ChangeTotalLampHoursToBeIntegerInProjectors < ActiveRecord::Migration[5.1]
  def up
    change_column :projectors, :total_lamp_hours, :string
  end
  
  def down
    change_column :projectors, :total_lamp_hours, :integer
  end
end
