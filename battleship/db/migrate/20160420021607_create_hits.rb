class CreateHits < ActiveRecord::Migration
  def change
    create_table :hits do |t|
      t.belongs_to :board
      t.belongs_to :player
      t.integer :row_index
      t.integer :col_index
    end
  end
end
