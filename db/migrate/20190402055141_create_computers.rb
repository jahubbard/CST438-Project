class CreateComputers < ActiveRecord::Migration[5.1]
  def change
    create_table :computers do |t|
      t.string :manufacture
      t.string :model
      t.string :serial
      t.string :string
      t.string :name
      t.string :classroom
      t.date :check_date

      t.timestamps
    end
  end
end
