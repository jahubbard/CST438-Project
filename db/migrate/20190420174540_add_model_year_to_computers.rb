class AddModelYearToComputers < ActiveRecord::Migration[5.1]
  def change
    add_column :computers, :model_year, :date
  end
end
