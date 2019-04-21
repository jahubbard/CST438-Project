class AddModelYearToSwitchers < ActiveRecord::Migration[5.1]
  def change
    add_column :switchers, :model_year, :date
  end
end
