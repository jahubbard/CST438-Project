class CreateSwitchers < ActiveRecord::Migration[5.1]
  def change
    create_table :switchers do |t|
      t.string :manufacture
      t.string :model
      t.string :serial
      t.string :classroom
      t.string :ahc_number
      t.string :audio

      t.timestamps
    end
  end
end
