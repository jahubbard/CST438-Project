class ChangeDateToBeStringInProjectors < ActiveRecord::Migration[5.1]
  def up
    change_column :projectors, :lamp_change, :string
  end
  
  def down
    change_column :projectors, :lamp_change, :date
  end
end
