class CreateProjectors < ActiveRecord::Migration[5.1]
  def change
    create_table :projectors do |t|
      t.string :manufacture
      t.string :model
      t.string :serial
      t.string :ahc_number
      t.string :classroom
      t.string :mount_type
      t.string :lamp_type
      t.string :throw_distance
      t.date :date_install
      t.date :date_checked
      t.date :lamp_change
      t.date :repair_date

      t.timestamps
    end
  end
end
