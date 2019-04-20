class AddModelYearToProjectors < ActiveRecord::Migration[5.1]
  def change
    add_column :projectors, :model_year, :date
  end
end
