class CreateTvs < ActiveRecord::Migration[5.1]
  def change
    create_table :tvs do |t|
      t.string :manufacture
      t.string :model
      t.string :serial
      t.string :ahc_number
      t.string :classroom
      t.date :date_install
      t.date :model_year

      t.timestamps
    end
  end
end
