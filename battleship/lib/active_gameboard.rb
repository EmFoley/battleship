require 'matrix'
class ActiveGameboard
  attr_reader :board
  def initialize(ships:, shots:)
    @board = Matrix.build(10,10) {0}.to_a
    @ships = ships
    @shots = shots
    place_ships
    place_shots
  end

  def place_ships
    @ships.map(&:coordinates).flatten(1).each do |row, col|
      @board[row][col] = "s"
    end
  end

  def place_shots
    @shots.each do |shot|
      @board[shot.row_index][shot.col_index] = "X"
    end
  end
end