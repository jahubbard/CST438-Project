class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :classroom
      t.string :proj_hours
      t.string :screen_cond
      t.string :tv_cond
      t.string :monitor_cond
      t.string :monitor_size
      t.string :computer_cond

      t.timestamps
    end
  end
end
