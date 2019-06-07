class AddOperatingSystemToComputers < ActiveRecord::Migration[5.1]
  def change
    add_column :computers, :operating_system, :string
  end
end
