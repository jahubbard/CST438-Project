class CreateCameras < ActiveRecord::Migration[5.1]
  def change
    create_table :cameras do |t|
      t.string :manufacture
      t.string :model
      t.string :serial
      t.string :classroom
      t.string :ahc_number

      t.timestamps
    end
  end
end
