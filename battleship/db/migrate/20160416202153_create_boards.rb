class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.belongs_to :game
      t.belongs_to :player
    end
  end
end
