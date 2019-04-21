class AddModelYearToCameras < ActiveRecord::Migration[5.1]
  def change
    add_column :cameras, :model_year, :date
  end
end
