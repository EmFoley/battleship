class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.integer :start_row_index
      t.integer :end_row_index
      t.integer :start_col_index
      t.integer :end_col_index
      t.belongs_to :board
    end
  end
end
