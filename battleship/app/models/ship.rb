class Ship < ActiveRecord::Base
  belongs_to :board

  validates :start_row_index, :numericality => { :less_than => 9 }
  validates :start_col_index, :numericality => { :less_than => 9 }
  validates :end_row_index, :numericality => { :less_than => 9 }
  validates :end_col_index, :numericality => { :less_than => 9 }


  def self.create_random(board:)
    starting_point = ["row", "column"].sample
    length = rand(2..5)
    start_row_index = rand(0..9)
    start_col_index = rand(0..9)
    end_row_index, end_col_index = if starting_point == "row"
      [start_row_index + length, start_col_index]
    else
      [start_row_index, start_col_index + length]
    end
    ship = self.create(board: board, start_row_index: start_row_index, 
      end_row_index: end_row_index,
      start_col_index: start_col_index,
      end_col_index: end_col_index
      )

    unless ship.valid?
      self.create_random(board: board)
    end
  end

  def coordinates
    row_indices = (self.start_row_index..self.end_row_index).to_a
    col_indices = (self.start_col_index..self.end_col_index).to_a
    row_indices.product(col_indices)
  end

end