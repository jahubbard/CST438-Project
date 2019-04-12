class AddTotalLampHoursToProjectors < ActiveRecord::Migration[5.1]
  def change
    add_column :projectors, :total_lamp_hours, :string
  end
end
