class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.integer :num_ships_left, null: false, default: 5
      t.belongs_to :game
      t.belongs_to :player
    end
  end
end
