class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.integer :num_hits_taken, null: false, default: 0
      t.integer :length, null: false, default: 3
      t.belongs_to :board
    end
  end
end
