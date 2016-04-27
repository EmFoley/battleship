class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.belongs_to :board
      t.belongs_to :player
      t.integer :row_index
      t.integer :col_index
    end
  end
end
